TRFILE=mspitzel.ino.d32_pro_en.bin

# Make a copy to do translations on
cp mspitzel.ino.d32_pro.bin $TRFILE

# Replace German text with English one by one
sed -i "" 's|<h2>Batterie-Zellen</h2>|<h2>Battery-cells  </h2>|g' $TRFILE
sed -i "" 's|Station Mode gestartet|Station Mode started  |g' $TRFILE
sed -i "" 's|Verbunden mit :|Connected to  :|g' $TRFILE
sed -i "" 's|Bekam IP:|Got IP  :|g' $TRFILE
sed -i "" 's|AP Mode gestartet|AP Mode started  |g' $TRFILE
sed -i "" 's|Update: %s|Update: %s|g' $TRFILE
sed -i "" 's|Update Erfolgreich: %u|Update Successful : %u|g' $TRFILE
sed -i "" 's|Aufw..rmphase kein Drahtsignal|Warm-up phase; no wire signal |g' $TRFILE
sed -i "" 's|Neustart\.\.\.|Restart \.\.\.|g' $TRFILE
sed -i "" 's|Scan Ergebnis:|Scan Results :|g' $TRFILE
sed -i "" 's|Sende Kommando zum M..her|Allow control mower      |g' $TRFILE
sed -i "" 's|Gefunden Roboter-BLE:|Found Robot-BLE     :|g' $TRFILE
sed -i "" 's|Fehler Mailversand,|Error sending mail,|g' $TRFILE
sed -i "" 's|M..hzeit abgeschlossen|Mowing time completed |g' $TRFILE
sed -i "" 's|Gehe zur Station per App\.|Go to station via App    |g' $TRFILE
sed -i "" 's|Akkukapazit..t Zeit..berschreitung|Battery capacity time exceeded    |g' $TRFILE
sed -i "" 's|Akku l..dt/balanciert|Battery balancing    |g' $TRFILE
sed -i "" 's|Akku l..dt|Charging  |g' $TRFILE
sed -i "" 's|Vorderrad Problem|FrontwheelProblem|g' $TRFILE
sed -i "" 's|Zur..ck vom Draht|Near Wire Follow |g' $TRFILE
sed -i "" 's|Zur..ck v. Draht|Near Wire Follow|g' $TRFILE
sed -i "" 's|km-Z..hler|Odometer  |g' $TRFILE
sed -i "" 's|Au..erhalb Begrenzung|outside boundary     |g' $TRFILE
sed -i "" 's|M..her im Einsatz oder nur nicht in Ladestation|Mower in use or not yet in charging station    |g' $TRFILE
sed -i "" 's|..berhitzung M..hmotor - Erholungsversuch|Mowermotor overheating -trying to recover|g' $TRFILE
sed -i "" 's|Konto Sch..ssel:|Account token:  |g' $TRFILE
sed -i "" 's|Kanten..berstand|Edge overhang   |g' $TRFILE
sed -i "" 's|Sto..stange Empfindlichkeit|Bumper sensitivity         |g' $TRFILE
sed -i "" 's|Keine Ladespannung erkannt\.|No chagring power detected\.|g' $TRFILE
sed -i "" 's|Stopptaste gedr..ckt|STOP button pushed  |g' $TRFILE
sed -i "" 's|Kein Drahtsignal w..hrend Fahrt, kein Stopp|No wire signal while mowing, not yet stoppe|g' $TRFILE
sed -i "" 's|Kein Drahtsignal w..hrend Automatik|No wire signal while auto operation|g' $TRFILE
sed -i "" 's|Einmalige Einrichtung\. Automatischer Betrieb gestoppt|One-time Setup\. Automatic Operation Stopped          |g' $TRFILE
sed -i "" 's|Geschwindigkeit zu hoch, wahrscheinlich schlechter Sattelitenfix\.|Apparent speed too high, probably poor satellite fix             |g' $TRFILE
sed -i "" 's|Einmalige Einrichtung\. Hindernisereignis|One-time Setup\. Obstacle Event          |g' $TRFILE
sed -i "" 's|Akku laden, automatischer Betrieb|Charge battery, Automatic operati|g' $TRFILE
sed -i "" 's|M..her sehr stark geneigt|Tilt is detected         |g' $TRFILE
sed -i "" 's|Zur Station, aber Akku noch ok\.|Battery to low to return to bas|g' $TRFILE
sed -i "" 's|Akkuentladezeit ..berschritten|Battery discharge time exceede|g' $TRFILE
sed -i "" 's|Niedrige Akkuspannung|Low battery voltage  |g' $TRFILE
sed -i "" 's|Stopptaste|Stopbutton|g' $TRFILE
sed -i "" 's|M..hfrequenz|Frequency   |g' $TRFILE
sed -i "" 's|M..hereinstellunen ..ndern.|Change mower settings.     |g' $TRFILE
sed -i "" 's|M..hstunden|Mowing time|g' $TRFILE
sed -i "" 's|M..her Basisstation verlassen|Mower left the basestation   |g' $TRFILE
sed -i "" 's|Inseln|Island|g' $TRFILE
sed -i "" 's|M..herdaten|Robot data |g' $TRFILE
sed -i "" 's|Manuelle IP-Einstellungen|Manual   IP-Einstellungen|g' $TRFILE
sed -i "" 's|Automatische Abfahrt deaktiviert|Automatic Departure Disabled    |g' $TRFILE
sed -i "" 's|Zu niedrige Temperatur|Temperature Too Low   |g' $TRFILE
sed -i "" 's|Systemschalter aus|System switch off\.|g' $TRFILE
sed -i "" 's|Inaktive Zeit erreicht|Inactive Time Reached\.|g' $TRFILE
#sed -i "" 's|Regen erkannt w..hrend Einsatz|Rain detected during mowing...|g' $TRFILE
sed -i "" 's|Regen erkannt w..hrend Einsatz|Rain detected during mowing  _|g' $TRFILE
sed -i "" 's|Regen erkannt und bleibt in Station|Auto departure disabled due to rain|g' $TRFILE
sed -i "" 's|Automatik gestoppt, suche Basisstation, Vorderrad zu lange in der Luft|Automatik gestoppt, suche Basisstation, Vorderrad zu lange in der Luft|g' $TRFILE
sed -i "" 's|Automatik gestoppt, Vorderrad zu lange in der Luft|Automatik gestoppt, Vorderrad zu lange in der Luft|g' $TRFILE
sed -i "" 's|Zeit zum Laden|Time to charge|g' $TRFILE
sed -i "" 's|Stecken geblieben|Stayed stuck.    |g' $TRFILE
sed -i "" 's|R..der mehrfach durchgedreht|Wheels spun multiple times  |g' $TRFILE
sed -i "" 's|Akku aufladen|ChargeBattery|g' $TRFILE
sed -i "" 's|Stopp per App\.|Stop via App  |g' $TRFILE
sed -i "" 's|Roboter ist gefangen|Robot is stuck      |g' $TRFILE
sed -i "" 's|Roboter stehen geblieben|Robot has lost position\.|g' $TRFILE
sed -i "" 's|Smart m..hen|Smart mow   |g' $TRFILE
sed -i "" 's|..komodus|Eco mode |g' $TRFILE
sed -i "" 's|M..hzeit in Zone erreicht|Mowing finished in zone  |g' $TRFILE
sed -i "" 's|Ton|Bip|g' $TRFILE
sed -i "" 's|Nein|No  |g' $TRFILE
sed -i "" 's|Basis|Basis|g' $TRFILE
sed -i "" 's|Turbo m..hen|Turbo mow   |g' $TRFILE
sed -i "" 's|Startpunkt|StartPoint|g' $TRFILE
sed -i "" 's|Nicht behindert|Not blocked    |g' $TRFILE
sed -i "" 's|Innerhalb inaktiver Zeit|Within inactive time    |g' $TRFILE
sed -i "" 's|Regen wurde erkannt|Rain was detected  |g' $TRFILE
sed -i "" 's|Demo-Modus aktiviert|Demo mode activated |g' $TRFILE
sed -i "" 's|Warte auf Benutzerinteraktion|Waiting for user interaction |g' $TRFILE
sed -i "" 's|Mehrere aufeinander folgende kurze Betriebszeiten erkannt|Several consecutive short opee rating times detected     |g' $TRFILE
sed -i "" 's|Einmalige Einrichtung aktiv|One-time setup active      |g' $TRFILE
sed -i "" 's|Programm deaktiviert|Program disabled    |g' $TRFILE
sed -i "" 's|Wochenprogramm deaktiviert|WeeklySchedule deactivated|g' $TRFILE
sed -i "" 's|PBox im Pausenmodus|P.Box in pause mode|g' $TRFILE
sed -i "" 's|Alle Wochentage inaktiv|All Weekdays is inactiv|g' $TRFILE
sed -i "" 's|Ladequelle nicht Basisstation|Ch. Source not Basestation   |g' $TRFILE
sed -i "" 's|Niedrige Temperatur|Low temperature    |g' $TRFILE
sed -i "" 's|Einstiegspunktproblem|Entry point problem  |g' $TRFILE
sed -i "" 's|Falsches Modell oder Softwarerelease|Wrong model or software release     |g' $TRFILE
sed -i "" 's|Wochenprogramm:|Weekly schedule|g' $TRFILE
sed -i "" 's|"http://Nutzer:Kennwort@|"http://Userna:Password@|g' $TRFILE
sed -i "" 's|BLE ausgeschaltet|BLE switched off |g' $TRFILE
sed -i "" 's|BLE ein|BLE on |g' $TRFILE
sed -i "" 's|BLE automatisch schalten|BLE switch automatically|g' $TRFILE
sed -i "" 's|Automatische Drehrichtung|Automa rotation direction|g' $TRFILE
sed -i "" 's|Nachricht gesendet|Message sent      |g' $TRFILE
sed -i "" 's|Antwort|Answer |g' $TRFILE
sed -i "" 's|Nutzer Robostart au..erhalb Begrenzung|User attempt start outside boundary   |g' $TRFILE
sed -i "" 's|Antwortzeit in ms:|Responstime in ms:|g' $TRFILE
sed -i "" 's|Sendezeitabstand in ms:|Transmi interval in ms:|g' $TRFILE
sed -i "" 's|Akkuladung:|Battcharge:|g' $TRFILE
sed -i "" 's|Gekippt|Tilted |g' $TRFILE
sed -i "" 's|Innen|In   |g' $TRFILE
sed -i "" 's|Raus|Out |g' $TRFILE
sed -i "" 's|Vorw\.|Forw\.|g' $TRFILE
sed -i "" 's|R..ckw\.|Reverse|g' $TRFILE
sed -i "" 's|Frontal|Frontal|g' $TRFILE
sed -i "" 's|Unbest\.|Undete.|g' $TRFILE
sed -i "" 's|Bewegen|Motion |g' $TRFILE
sed -i "" 's|Telemetrie|Telemetric|g' $TRFILE
sed -i "" 's|Einstellungen|Settings     |g' $TRFILE
sed -i "" 's|Konfiguration|Configuration|g' $TRFILE
sed -i "" 's|Roboter Konsole:|Robot Console  :|g' $TRFILE
sed -i "" 's|Freier dynamischer Speicher:|Free dynamic memory        :|g' $TRFILE
sed -i "" 's|Betriebszeit:|Uptime:      |g' $TRFILE
sed -i "" 's|Aktuelle Zone|Current Zone |g' $TRFILE
sed -i "" 's|Hauptzone|Main zone|g' $TRFILE
sed -i "" 's|Nebenzone|Sub zone |g' $TRFILE
sed -i "" 's|von gebad</h3>|von gebad</h3>|g' $TRFILE
sed -i "" 's|Seriennummer:|Serialnumber:|g' $TRFILE
sed -i "" 's|Echtzeit Robot Position|Robot position live    |g' $TRFILE
sed -i "" 's|Betrieb Ereignisprotokoll|   Operation event log   |g' $TRFILE
sed -i "" 's|Stopp-Grund|Stop-reason|g' $TRFILE
sed -i "" 's|Betriebsart|Oper. mode |g' $TRFILE
sed -i "" 's|Akku Laufzeitprotokoll|Battery life logbook  |g' $TRFILE
sed -i "" 's|Spannungin|Voltage |g' $TRFILE
sed -i "" 's|Kapazit..t|Capacity  |g' $TRFILE
sed -i "" 's|Laufzeit|Duration|g' $TRFILE
sed -i "" 's|Einsatzprotokoll| Operation log  |g' $TRFILE
sed -i "" 's|Gehe zur Station|Going to Base   |g' $TRFILE
sed -i "" 's|Ende|Fin.|g' $TRFILE
sed -i "" 's|aus Basis|aus Basis|g' $TRFILE
sed -i "" 's|Rand in Min\.|Rand in Min\.|g' $TRFILE
sed -i "" 's|Dauer in Min\.|Dauer in Min\.|g' $TRFILE
sed -i "" 's|Grund|Reaso|g' $TRFILE
sed -i "" 's|in Basis|in Basis|g' $TRFILE
sed -i "" 's|x pro Woche|x per Week |g' $TRFILE
sed -i "" 's|niedrig|lower  |g' $TRFILE
sed -i "" 's|mittel|middle|g' $TRFILE
sed -i "" 's|hoch|high|g' $TRFILE
sed -i "" 's|Telnet Konsole bereit, zum Verbinden verwende|Telnet console ready to use for connection   |g' $TRFILE
sed -i "" 's|Runterladen|Download   |g' $TRFILE
sed -i "" 's|Aktiviere|Activate |g' $TRFILE
sed -i "" 's|Deaktiviere|DeActivate |g' $TRFILE
sed -i "" 's|Ereignisse:|Events    :|g' $TRFILE
sed -i "" 's|manuelle Netzwerkeinstellungen\.|manual network configuration   |g' $TRFILE
sed -i "" 's|<br>Programm startet in einer Minute neu!|<br>Program will restart in one minute  !|g' $TRFILE
sed -i "" 's|Roboter-Einsatzdatei|Roboter-Einsatzdatei|g' $TRFILE
sed -i "" 's|GPS Protokolldatei|GPS Log file      |g' $TRFILE
sed -i "" 's|erfolgreich|successful |g' $TRFILE
sed -i "" 's|nicht|not  |g' $TRFILE
sed -i "" 's|Seriennummer:|Serialnumber:|g' $TRFILE
sed -i "" 's|Dateien:|Files  :|g' $TRFILE
sed -i "" 's|Groesse:|Size   :|g' $TRFILE
sed -i "" 's|Akku Laufzeitprotokoll|Battery run time log  |g' $TRFILE
sed -i "" 's|Maeher Ereignis|Mower Event    |g' $TRFILE
sed -i "" 's|Auszug Batterie-Zellen|Auszug Batterie-Zellen|g' $TRFILE
sed -i "" 's|ZEIT_ZEILEN:|ZEIT_ZEILEN:|g' $TRFILE
sed -i "" 's|akkutabelle\.bin|akkutabelle\.bin|g' $TRFILE
sed -i "" 's|Separat A|Separat A|g' $TRFILE
sed -i "" 's|Separat B|Separat B|g' $TRFILE
sed -i "" 's|Keine|None |g' $TRFILE
sed -i "" 's|Kein Start|No Start  |g' $TRFILE
sed -i "" 's|Betrieb Stopp|OperationStop|g' $TRFILE
sed -i "" 's|Betrieb Unterbrechung|OperationInterruption|g' $TRFILE
sed -i "" 's|Gehe zur Ladestation|Going to Basestation|g' $TRFILE
sed -i "" 's|Aufladen Problem|Charging Problem|g' $TRFILE
sed -i "" 's|Verbindung zu|Connecting to|g' $TRFILE
sed -i "" 's|Einsatzende: %d:%02d|Finish at  : %d:%02d|g' $TRFILE
sed -i "" 's|Inhalt eventLogAdr + ACT_STATEMOW:|Inhalt eventLogAdr + ACT_STATEMOW:|g' $TRFILE
sed -i "" 's|Start Datum: %02d\.%02d\.%02d; Zone:|Start Date : %02d\.%02d\.%02d; Zone:|g' $TRFILE
sed -i "" 's|; Start aus Station:|; Start fromStation:|g' $TRFILE
sed -i "" 's|; Automatischer Start:|; Automatic     Start:|g' $TRFILE
sed -i "" 's|; Startzeit: %d:%02d|; Starttime: %d:%02d|g' $TRFILE
sed -i "" 's|Abfahrtsgrund:|Depart reason:|g' $TRFILE
sed -i "" 's|Stoppgrund:|Stopreason:|g' $TRFILE
sed -i "" 's|; Gehe zur Station: %d:%02d|; Go to Station   : %d:%02d|g' $TRFILE
sed -i "" 's|rechtes|rechtes|g' $TRFILE
sed -i "" 's|Authentisieren fehlgeschlagen!|Authentication failed        !|g' $TRFILE
sed -i "" 's|Versuche zur GPS-Datenerfassung:|Trying to get GPS fix          :|g' $TRFILE
sed -i "" 's|Satelliten:|Satellites:|g' $TRFILE
sed -i "" 's|<br>Kein oder schlechter Sattelitenempfang\.|<br>No or poor satellite reception         |g' $TRFILE
sed -i "" 's|<br>GPS Geschwindigkeit :|<br>GPS Speed           :|g' $TRFILE
sed -i "" 's|Abstand zur Basis :|Distance to Base  :|g' $TRFILE
sed -i "" 's|Festsitzender Standort zu nahe am vorherigen Standort, keine Benachrichtigung\.\.\.|Stuck location too close to previous location, not notifying                 \.\.\.|g' $TRFILE
sed -i "" 's|Roboter scheint stecken geblieben zu sein!|Roboter scheint stecken geblieben zu sein!|g' $TRFILE
sed -i "" 's|Roboter bewegt sich wieder\.|Roboter bewegt sich wieder\.|g' $TRFILE
sed -i "" 's|Benachrichtigungstest|Benachrichtigungstest|g' $TRFILE
sed -i "" 's|Kopiere Einsatzprotokoll zur SD-Card|Kopiere Einsatzprotokoll zur SD-Card|g' $TRFILE
sed -i "" 's|Adaptiere Einsatzprotokoll auf EEPROM|Adaptiere Einsatzprotokoll auf EEPROM|g' $TRFILE
sed -i "" 's|'N' Testbenachrichtigung versenden\.\.\.|'N' Testbenachrichtigung versenden\.\.\.|g' $TRFILE
sed -i "" 's|'E' Einsatzprotokoll von SD-Card zum EEPROM kopieren|'E' Einsatzprotokoll von SD-Card zum EEPROM kopieren|g' $TRFILE
sed -i "" 's|prgVersion|prgVersion|g' $TRFILE
sed -i "" 's|Neue Softwareversion|New Software version|g' $TRFILE
sed -i "" 's|WiFi verbunden; Wait|WiFi connected; Wait|g' $TRFILE
sed -i "" 's|BLE automatisch ausgeschalet|BLE automatically turned off|g' $TRFILE
sed -i "" 's|BLE automatisch eingeschalet|BLE automatically turned on |g' $TRFILE
sed -i "" 's|Fortschritt: |Progress   : |g' $TRFILE
sed -i "" 's|Akkuladung vor Einsatz\.|Charge before operation|g' $TRFILE
sed -i "" 's|Zeit vor Robotereinsatz\.|Zeit vor Robotereinsatz\.|g' $TRFILE
sed -i "" 's|automatisch BLE schalten\.|automatisch BLE schalten\.|g' $TRFILE
sed -i "" 's|GPS Warnmeldungen\.|GPS Warnmeldungen\.|g' $TRFILE
sed -i "" 's|Mail Anmeldedaten\.|Mail Anmeldedaten\.|g' $TRFILE
sed -i "" 's|Mailserver Port\.|Mailserver Port\.|g' $TRFILE
sed -i "" 's|Mailserver\.|Mailserver\.|g' $TRFILE
sed -i "" 's|Mailbenachrichtigung\.|Mailbenachrichtigung\.|g' $TRFILE
sed -i "" 's|Ereignisprotokolle schreiben\.|Ereignisprotokolle schreiben\.|g' $TRFILE
sed -i "" 's|HTTP Anmeldedaten\.|HTTP Anmeldedaten\.|g' $TRFILE
sed -i "" 's|RSSI neu verbinden\.|RSSI neu verbinden\.|g' $TRFILE
sed -i "" 's|Wifi Anmeldedaten\.<br>Programm startet in einer Minute neu!|Wifi Anmeldedaten\.<br>Programm startet in einer Minute neu!|g' $TRFILE
sed -i "" 's|Digital Ausgang\.|Digital Output  |g' $TRFILE
sed -i "" 's|Akkuladung:|Bat.charge:|g' $TRFILE
sed -i "" 's|Ein vor Einsatz:|On before dep. :|g' $TRFILE
sed -i "" 's|Neu verbinden:|Reconnect    :|g' $TRFILE
sed -i "" 's|DNS-Server:|DNS-Server:|g' $TRFILE
sed -i "" 's|Netzmaske:|Netmask  :|g' $TRFILE
sed -i "" 's|Gateway:|Gateway:|g' $TRFILE
sed -i "" 's|IP-Addresse:|IP-Address :|g' $TRFILE
sed -i "" 's|Ungenauigkeit:|Inaccuracy   :|g' $TRFILE
sed -i "" 's|Longitude Basis:|Longitude Basis:|g' $TRFILE
sed -i "" 's|Latitude Basis:|Latitude Basis:|g' $TRFILE
sed -i "" 's|Protokollierung|Logging        |g' $TRFILE
sed -i "" 's|Nummern:|Numbers:|g' $TRFILE
sed -i "" 's|Weiterleitung:|Forwarding   :|g' $TRFILE
sed -i "" 's|Protokoll:|Event log:|g' $TRFILE
sed -i "" 's|Offset Zeitzone:|Offset Zeitzone:|g' $TRFILE
sed -i "" 's|Server:|Server:|g' $TRFILE
sed -i "" 's|Mainboard SN:|Mainboard SN:|g' $TRFILE
sed -i "" 's|Benutzername:|Username    :|g' $TRFILE
sed -i "" 's|Kennwort:|Password:|g' $TRFILE
sed -i "" 's|SSID:|SSID:|g' $TRFILE
sed -i "" 's|Zusatzfunktionen|Aux functions   |g' $TRFILE
sed -i "" 's|google maps Robot Position|google maps Robot Position|g' $TRFILE
sed -i "" 's|Benachrichtigungsereignisse|Notification events        |g' $TRFILE
sed -i "" 's|Mail Benachrichtigung|Email notification   |g' $TRFILE
sed -i "" 's|pushbullet Benachrichtigung|pushbullet notifications   |g' $TRFILE
sed -i "" 's|Ereignisprotokoll:|Event log        :|g' $TRFILE
sed -i "" 's|Netzwerkzeit (NTP)|Network time (NTP)|g' $TRFILE
sed -i "" 's|HTTP|HTTP|g' $TRFILE
sed -i "" 's|WiFi|WiFi|g' $TRFILE
sed -i "" 's|Mainboard|Mainboard|g' $TRFILE
sed -i "" 's|Horizontal W.|Horizontal A.|g' $TRFILE
sed -i "" 's|Vertikal Winkel|Vertical angle |g' $TRFILE
sed -i "" 's|Linear Ampl\.|Linear Ampl\.|g' $TRFILE
sed -i "" 's|Relative Ampl\.|Relative Ampl\.|g' $TRFILE
sed -i "" 's|Amplitude|Amplitude|g' $TRFILE
sed -i "" 's|Lesen|Lesen|g' $TRFILE
sed -i "" 's|Drehzahl U/min|Rotations RPM |g' $TRFILE
sed -i "" 's|Weg in Ticks|Total Pulses|g' $TRFILE
sed -i "" 's|Geschwindigkeit|Velocity       |g' $TRFILE
sed -i "" 's|Strom|Strom|g' $TRFILE
sed -i "" 's|Richtung|Directio|g' $TRFILE
sed -i "" 's|Entfernung|Travled   |g' $TRFILE
sed -i "" 's|Fahrrichtung|Direction   |g' $TRFILE
sed -i "" 's|Balancieren|Balancing  |g' $TRFILE
sed -i "" 's|Ladequelle|Ch. Source|g' $TRFILE
sed -i "" 's|Ladestufe|Stage    |g' $TRFILE
sed -i "" 's|Laden PWM|Charg PWM|g' $TRFILE
sed -i "" 's|Ladestrom|Ch. Amp. |g' $TRFILE
sed -i "" 's|Ladespannung|Charge volt |g' $TRFILE
sed -i "" 's|Status|Status|g' $TRFILE
sed -i "" 's|Strom|Amp. |g' $TRFILE
sed -i "" 's|Spannung|Voltage |g' $TRFILE
sed -i "" 's|Temperatur|Temperatur|g' $TRFILE
sed -i "" 's|Neigung, Beschleunigungssensor|Inclination, accelerat. sensor|g' $TRFILE
sed -i "" 's|Drahtsignal|Wire signal|g' $TRFILE
sed -i "" 's|Voderrad|Fr.Wheel|g' $TRFILE
sed -i "" 's|Antrieb|Drive  |g' $TRFILE
sed -i "" 's|Akku Laden|Batt.charg|g' $TRFILE
sed -i "" 's|Akku Zellspannungen|Batterycell voltage|g' $TRFILE
sed -i "" 's|Aktive Zone|Active Zone|g' $TRFILE
sed -i "" 's|Abfahrtszeit|Abfahrtszeit|g' $TRFILE
sed -i "" 's|Tag aktiv|Tag aktiv|g' $TRFILE
sed -i "" 's|I-Wechsel Zeit|I-Wechsel Zeit|g' $TRFILE
sed -i "" 's|I-Wechsel Empf\.|I-Wechsel Empf\.|g' $TRFILE
sed -i "" 's|Seite|Side |g' $TRFILE
sed -i "" 's|Schlupf Distanz|Slip distance  |g' $TRFILE
sed -i "" 's|Erkennung|Detection|g' $TRFILE
sed -i "" 's|Wochenprogr\.|WeeklySched.|g' $TRFILE
sed -i "" 's|Feuchtigkeit:|Humidity    :|g' $TRFILE
sed -i "" 's|Drehrichtung re\.|Drehrichtung re\.|g' $TRFILE
sed -i "" 's|Drehrichtung li\.|Direction       |g' $TRFILE
sed -i "" 's|Ab Temperatur|minTemperatur|g' $TRFILE
sed -i "" 's|Drehzahl max\.|Maximum speed|g' $TRFILE
sed -i "" 's|Drehzahl min\.|Minimum speed|g' $TRFILE
sed -i "" 's|Folge Drahtabst\.|Folge Drahtabst\.|g' $TRFILE
sed -i "" 's|In Fahrt drehen|In Fahrt drehen|g' $TRFILE
sed -i "" 's|Drahtabstand|Edge distanc|g' $TRFILE
sed -i "" 's|Rand langsamer|Edge slower   |g' $TRFILE
sed -i "" 's|Rettung Rand|Rettung Rand|g' $TRFILE
sed -i "" 's|Breite|Width |g' $TRFILE
sed -i "" 's|Abstand|Distanc|g' $TRFILE
sed -i "" 's|Aktuelle Zone :|Current  Zone :|g' $TRFILE
sed -i "" 's|In Ladestation|In Ladestation|g' $TRFILE
sed -i "" 's|Kantenmodus|Edge Mow   |g' $TRFILE
sed -i "" 's|Kindersicherung|Child Lock     |g' $TRFILE
sed -i "" 's|Diebstahlschutz|Anti-Theft     |g' $TRFILE
sed -i "" 's|Empfindlichkeit|Sensitivity    |g' $TRFILE
sed -i "" 's|Regensensor|Rain sensor|g' $TRFILE
sed -i "" 's|Inaktiv bis|Inactiv To |g' $TRFILE
sed -i "" 's|Inaktiv von|InactivFrom|g' $TRFILE
sed -i "" 's|Inaktiv am|Inaktiv am|g' $TRFILE
sed -i "" 's|Ausfahrt behindert:|Operation blocked: |g' $TRFILE
sed -i "" 's|Zur Station|Zur Station|g' $TRFILE
sed -i "" 's|Akkuladung :|Bat. charg :|g' $TRFILE
sed -i "" 's|Vorderrad Schlupf|Frontwheel slip  |g' $TRFILE
sed -i "" 's|Automatikbetrieb|Automatic mode  |g' $TRFILE
sed -i "" 's|Bedienschutz Paneel|Control Panel lock |g' $TRFILE
sed -i "" 's|Drehrichtung Messer|Blade rotation dir.|g' $TRFILE
sed -i "" 's|Schmale Passage|Narrow passage |g' $TRFILE
sed -i "" 's|Passage schmal|Narrow Passage|g' $TRFILE
sed -i "" 's|Ausfahrt Temperatur|Exit temperature   |g' $TRFILE
sed -i "" 's|Abtasten|Abtasten|g' $TRFILE
sed -i "" 's|Erkenne Basisstation|Detect base station |g' $TRFILE
sed -i "" 's|Max\. Distanz zum Draht|Max. Distance to wire |g' $TRFILE
sed -i "" 's|Min\. Distanz zum Draht|Min. Distance to wire |g' $TRFILE
sed -i "" 's|Nahe Draht folgen|Near wire follow |g' $TRFILE
sed -i "" 's|Zur..ckgelegte Strecke|Distance traveled     |g' $TRFILE
sed -i "" 's|Inseln|Inseln|g' $TRFILE
sed -i "" 's|Suchkapazit..t|Search capacit|g' $TRFILE
sed -i "" 's|Suchspannung|Search Volt |g' $TRFILE
sed -i "" 's|Dauer in Min.|Duration Min.|g' $TRFILE
sed -i "" 's|Programm|Schedule|g' $TRFILE
sed -i "" 's|Sonntag|Sunday |g' $TRFILE
sed -i "" 's|Samstag|Saterda|g' $TRFILE
sed -i "" 's|Freitag|Friday |g' $TRFILE
sed -i "" 's|Donnerstag|Thursday  |g' $TRFILE
sed -i "" 's|Mittwoch|Wednesda|g' $TRFILE
sed -i "" 's|Dienstag|Tuesday |g' $TRFILE
sed -i "" 's|Montag|Monday|g' $TRFILE
sed -i "" 's|Stopp|Stop |g' $TRFILE
sed -i "" 's|Links|Left |g' $TRFILE
sed -i "" 's|Rechts|Right |g' $TRFILE
sed -i "" 's|Zeit|Time|g' $TRFILE
sed -i "" 's|Datum|Date |g' $TRFILE
sed -i "" 's|Zelle|Cell |g' $TRFILE
sed -i "" 's|Aktiviert|Enabled  |g' $TRFILE
sed -i "" 's|Inaktive|Inactive|g' $TRFILE
sed -i "" 's|Tage|Days|g' $TRFILE
sed -i "" 's|Fehler|Error |g' $TRFILE
sed -i "" 's|Uhr|   |g' $TRFILE
sed -i "" 's|Std\.|Hour|g' $TRFILE
sed -i "" 's|Minuten|Minutes|g' $TRFILE
sed -i "" 's|Ausfahrt|Exit    |g' $TRFILE
sed -i "" 's|U/min|RPM  |g' $TRFILE
sed -i "" 's|Setzen| Set  |g' $TRFILE
sed -i "" 's|Setze| Set |g' $TRFILE
sed -i "" 's|M..hen|Mowing|g' $TRFILE
sed -i "" 's|L..nge|Length|g' $TRFILE
sed -i "" 's|L..schen|Delete  |g' $TRFILE
sed -i "" 's|Akku|Bat.|g' $TRFILE
sed -i "" 's|Automatisch|Automatic  |g' $TRFILE
sed -i "" 's|Nächster Einsatz|Next operation   |g' $TRFILE
sed -i "" 's|Nächste Zone|Next Zone    |g' $TRFILE
sed -i "" 's|Mähe in Bereich|Mowing in area  |g' $TRFILE
sed -i "" 's|Restliche Mähzeit|Remaining time    |g' $TRFILE
sed -i "" 's|Gemähte Fläche|Mowed area      |g' $TRFILE
sed -i "" 's|Sto..stange|Bumper     |g' $TRFILE
sed -i "" 's|Mähmotor|Mow-motor|g' $TRFILE
sed -i "" 's|Z..hler|Counter|g' $TRFILE
sed -i "" 's|..berstrom|OverCurren|g' $TRFILE
sed -i "" 's|Kapazit..t akt.|CurrentCapacity|g' $TRFILE
sed -i "" 's|Kapazit..t max.|MaximumCapacity|g' $TRFILE
sed -i "" 's|Kap. zur..ck|Cap. Left   |g' $TRFILE
sed -i "" 's|Kapazität|Capacity  |g' $TRFILE
sed -i "" 's|automatisch|automatic  |g' $TRFILE
sed -i "" 's|Aus|Off|g' $TRFILE
sed -i "" 's|Ein|On |g' $TRFILE
#sed -i "" 's|Stecken geblieben. R..der mehrfach durchgedreht|Stecken geblieben. R..der mehrfach durchgedreht|g' $TRFILE

echo "Create truncated file, without crc (33th last byte) and hash (last 32 bytes)"
head -c $(( $(wc -c $TRFILE | cut -d " " -f 2) - 33)) $TRFILE > $TRFILE.correctcrchash
cp ${TRFILE}.correctcrchash ${TRFILE}.temp

echo "Create temp. file with correct crc"
esptool.py image_info --version 2 $TRFILE | grep -a "Checksum\|Validation hash" | tr '\n' ' ' | cut -d " " -f6,9 | tr -d ') ' | xxd -r -p >> ${TRFILE}.temp

echo "Create final file with both crc and hash"
esptool.py image_info --version 2 ${TRFILE}.temp | grep -a "Checksum\|Validation hash" | tr '\n' ' ' | cut -d " " -f2,6 | tr -d ' ' | xxd -r -p >> ${TRFILE}.correctcrchash

mv ${TRFILE}.correctcrchash ${TRFILE}

echo "Showing off"
esptool.py image_info --version 2 ${TRFILE}

rm ${TRFILE}.temp
