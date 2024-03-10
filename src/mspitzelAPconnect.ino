/*
  Zum Hochladen über Terminal können Sie Folgendes verwenden: curl -u Mspitzel:Mspitzel007 -F "image=@fmspitzel.ino.d32_pro.bin" mspitzel.local:8080/update
  Falls Sie die Standardeinstellungen geändert haben passen Sie die Anmeldedaten an.
*/

/*
  Standardmäßig erzeugt diese Skript einen AP und ein neues WLAN-Netzwerk.
  Der Standard-Netzwerkname ist "Mspitzel" und das WiFi-Passwort ist "Mspitzel007" (ohne Anführungszeichen).

  Wenn Sie die SSID/Passwort-Informationen für Ihr lokales WLAN-Netzwerk angeben, versucht das Skript zunächst eine Verbindung zu Ihrem 
  bestehenden lokalen WLAN-Netzwerk als Client herzustellen. Bei Erfolg werden die lokalen WLAN-Zugangsdaten im EEPROM gespeichert. 
  Nach dem Flashen und einen Neustart versucht die Firmware mspitzel sich mit Ihrem Netzwerk zu verbinden.
  Nur wenn die lokale WLAN-Verbindung nicht erfolgreich ist, kehrt das Skript zum Standardverhalten zurück.

  Im Mähspitzel-Programm können Sie unter Konfiguration die Standardeinstellungen für Benutzernamen und Kennwort ändern (empfohlen).
  Dort sind auch Ihre Roboter-Daten SSID und Seriennummer des Mainboards einzutragen.
  Vielen Dank an Frederik Holst, welcher mir Robotan http://www.robotan.de als initiale Vorlage zur Verfügung stellte!
*/ 

/*
 *  Board: "LOLIN D32 PRO"
 *  Upload Speed: "921600"
 *  Flash Frequency: "80MHz"
 *  Partition Scheme: "Minimal SPIFFS (Large APPS with OTA)"
 *  Core Debug Level: "Keine"
 *  PSRAM: "Enabled"
 *  Port
 */

#define LOGIN_CREDENTIALS_LENGTH_MAX 32

/* Anfang Konfigurationsabschnitt */
const char WLAN_local_SSID[32]     = "meineSSID";       // Geben Sie Ihre bestehende lokale WLAN SSID ein
const char WLAN_local_password[32] = "meinKennwort";    // Geben Sie Ihr bestehendes lokales WLAN-Passwort ein.

const char http_username[LOGIN_CREDENTIALS_LENGTH_MAX] = "Mspitzel";    // HTTP Benutzername, maximum von 31 Zeichen
const char http_password[LOGIN_CREDENTIALS_LENGTH_MAX] = "Mspitzel007"; // HTTP Kennwort, maximum von 31 Zeichen
/* Ende Konfigurationsabschnitt */

#include <WiFi.h>
#include <WebServer.h>
#include <HTTPUpdate.h>
#include <HTTPClient.h>
#include <WiFiClient.h>
#include <EEPROM.h>

const char* host = "mspitzel";
const char* def_ssid = "Mspitzel";
const char* def_pass = "Mspitzel007";

int eeprom_allocated_mem = 4096;
int eeprom_login_credentials_base=64;

  const char* serverIndex = "<form method='POST' action='/update' enctype='multipart/form-data'><input type='file' name='update'><input type='submit' value='Update'></form>";
  
WebServer httpServer(8080);
HTTPUpdate httpUpdater;
WiFiClient WLAN_Client;
IPAddress local_ip;

void setup(void) {

  /* Serielle Schnittstelle initialisieren */
  Serial.begin(115200);
  Serial.println();

  /* Clear EEPROM */
  Serial.print("Lösche EEPROM-Inhalt...");
  EEPROM.begin(eeprom_allocated_mem);
  
  #define EVENTLOG_ADR 1024
  //for (int i = 0; i < EVENTLOG_ADR; ++i) { // Einsatzprotokoll nicht löschen
  for (int i = 0; i < eeprom_allocated_mem; ++i) { 
      EEPROM.write(i, 0); 
  }
  Serial.println("erledigt");

  /* Speicher http Benutzername / Kennwort in EEPROM */
  EEPROM.put(eeprom_login_credentials_base, http_username);
  EEPROM.put(eeprom_login_credentials_base +  LOGIN_CREDENTIALS_LENGTH_MAX, http_password);

  Serial.println("Einrichten des Firmware-Uploads...");
  
  if (!Local_WLAN_Connect()) {
    /* Standardverhalten - spawn access point */
    WiFi.mode(WIFI_AP);
    WiFi.setHostname(host);
    WiFi.softAP(def_ssid, def_pass);
    Serial.printf("Erstellter WLAN-Zugangspunkt mit WLAN SSID %s\n",def_ssid);
    /* lokale IP */
    local_ip = WiFi.softAPIP();
    Serial.printf("\n>>> Verbindung zum WiFi-Netzwerk \"%s\" mit Kennwort \"%s\"\n\n",def_ssid, def_pass);
  }
  
  EEPROM.commit();
  EEPROM.end();

  httpServer.on("/", HTTP_GET, []() {
  httpServer.sendHeader("Connection", "close");
  httpServer.send(200, "text/html", serverIndex);
  });
  httpServer.on("/update", HTTP_POST, []() {
    httpServer.sendHeader("Connection", "close");
    httpServer.send(200, "text/plain", (Update.hasError()) ? "Fehler" : "In Ordnung");
    delay(1000);
    ESP.restart();
  }, []() {
    HTTPUpload& upload = httpServer.upload();
    if (upload.status == UPLOAD_FILE_START) {
      Serial.setDebugOutput(true);
      Serial.printf("Update: %s\n", upload.filename.c_str());
      if (!Update.begin()) {
        Update.printError(Serial);
      }
    } else if (upload.status == UPLOAD_FILE_WRITE) {
      if (Update.write(upload.buf, upload.currentSize) != upload.currentSize) {
        Update.printError(Serial);
      }
    } else if (upload.status == UPLOAD_FILE_END) {
      if (Update.end(true)) { //true, um die Größe an den aktuellen Fortschritt anzupassen
        Serial.printf("Update erfolgreich: %u\nNeustart...\n", upload.totalSize);
      } else {
        Update.printError(Serial);
      }
      Serial.setDebugOutput(false);
    }
    yield();
  });
  httpServer.begin();
  Serial.println("HTTP Server gestartet");
return;
}

void loop(void){
  httpServer.handleClient();
}


boolean Local_WLAN_Connect() {
  /* Versuch lokales WLAN zu benutzen mit den angegebenen Zugangsdaten */
  if ( strlen(WLAN_local_SSID) && strlen(WLAN_local_password)) {
    /* Wifi client mode */
    WiFi.mode(WIFI_STA);
    
    /* mit bestehendem WLAN verbinde */
    Serial.printf("Verbindung mit lokaler WLAN-SSID %s",WLAN_local_SSID);
    WiFi.begin(WLAN_local_SSID, WLAN_local_password);

    /* Warten, bis die Verbindung erfolgreich ist */
    for (int i = 0; i < 20; i++) {  //timeout [s]
      delay(1000);  
      
      int connectionStatus = WiFi.status();
      switch(connectionStatus) {
        case WL_CONNECTED: 
          Serial.println("...verbunden");
          local_ip = WiFi.localIP();
          /* WiFi-Zugangsdaten in EEPROM speichern */
          EEPROM.put(0,WLAN_local_SSID);
          EEPROM.put(32,WLAN_local_password);
          return true; // WLAN-Verbindung erfolgreich
        default:
          Serial.print(".");
      }
    }
  }
  Serial.println("...nicht in der Lage, eine Verbindung herzustellen"); // zum Standardverhalten zurückkehren
  return false;
}
