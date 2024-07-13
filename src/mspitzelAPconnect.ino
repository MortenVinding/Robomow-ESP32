/*
  To upload via terminal you can use: curl -u Mspitzel:Mspitzel007 -F "image=@fmspitzel.ino.d32_pro.bin" mspitzel.local:8080/update
  If you have changed the default settings, adjust the login details.
*/

/*
By default, this script creates an AP and a new WiFi network.
The default network name is "Mspitzel" and the WiFi password is "Mspitzel007" (without quotes).

If you provide the SSID/password information for your local WiFi network, the script first tries to connect to your
existing local WiFi network as a client. If successful, the local WiFi access data is stored in the EEPROM.
After flashing and a restart, the firmware mspitzel tries to connect to your network.
Only if the local WiFi connection is not successful does the script return to the default behavior.

In the Mähspitzel program, under Configuration, you can change the default settings for user name and password (recommended).
Your robot data SSID and serial number of the mainboard must also be entered there.
Many thanks to Frederik Holst, who provided me with Robotan http://www.robotan.de as an initial template!
*/ 

/*
 *  Board: "LOLIN D32 PRO"
 *  Upload Speed: "921600"
 *  Flash Frequency: "80MHz"
 *  Partition Scheme: "Minimal SPIFFS (Large APPS with OTA)"
 *  Core Debug Level: "none"
 *  PSRAM: "Enabled"
 *  Port
 */

#define LOGIN_CREDENTIALS_LENGTH_MAX 32

/* start of the configuration section */
const char WLAN_local_SSID[32]     = "YOURSSID";       // Enter your existing local WIFI SSID
const char WLAN_local_password[32] = "WiFiPass";    // Enter your existing local Wi-Fi password.
const char http_username[LOGIN_CREDENTIALS_LENGTH_MAX] = "RobotUser";    // HTTP username, maximum of 31 characters
const char http_password[LOGIN_CREDENTIALS_LENGTH_MAX] = "RobotPass"; // HTTP password, maximum of 31 characters
/* end of the configuration section */

#include <WiFi.h>
#include <WebServer.h>
#include <HTTPUpdate.h>
#include <HTTPClient.h>
#include <WiFiClient.h>
#include <EEPROM.h>

const char* host = "Robomow";
const char* def_ssid = "Robomow";
const char* def_pass = "R0b0M0w.";

int eeprom_allocated_mem = 4096;
int eeprom_login_credentials_base=64;

  const char* serverIndex = "<form method='POST' action='/update' enctype='multipart/form-data'><input type='file' name='update'><input type='submit' value='Update'></form>";
  
WebServer httpServer(8080);
HTTPUpdate httpUpdater;
WiFiClient WLAN_Client;
IPAddress local_ip;

void setup(void) {

  /* Init. serial speed */
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

  /* write http username / password in EEPROM */
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
    httpServer.send(200, "text/plain", (Update.hasError()) ? "Failed" : "Success");
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
      if (Update.end(true)) { //true, to adjust the size to the current progress
        Serial.printf("Update successful: %u\Restarting...\n", upload.totalSize);
      } else {
        Update.printError(Serial);
      }
      Serial.setDebugOutput(false);
    }
    yield();
  });
  httpServer.begin();
  Serial.println("HTTP Server started.");
return;
}

void loop(void){
  httpServer.handleClient();
}


boolean Local_WLAN_Connect() {
  /* Try to use local WLAN with the specified login */
  if ( strlen(WLAN_local_SSID) && strlen(WLAN_local_password)) {
    /* Wifi client mode */
    WiFi.mode(WIFI_STA);
    
    /* Connect to existing WLAN */
    Serial.printf("Connection with local WIFI SSID %s",WLAN_local_SSID);
    WiFi.begin(WLAN_local_SSID, WLAN_local_password);

    /* Waiting until connection is established */
    for (int i = 0; i < 20; i++) {  //timeout [s]
      delay(1000);  
      
      int connectionStatus = WiFi.status();
      switch(connectionStatus) {
        case WL_CONNECTED: 
          Serial.println("...connected");
          local_ip = WiFi.localIP();
          /* Write WiFi-login in EEPROM */
          EEPROM.put(0,WLAN_local_SSID);
          EEPROM.put(32,WLAN_local_password);
          return true; // WIFI connection succesful
        default:
          Serial.print(".");
      }
    }
  }
  Serial.println("...unable to establish a connection"); // zum Standardverhalten zurückkehren
  return false;
}
