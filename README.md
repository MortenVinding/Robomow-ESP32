# Robomow-ESP32
## ESP32 based bluetooth Robomow controller

Based on https://www.skyynet.de/mowgli_connect.php

This is a modification of the original binary file to English.
Since there is only a binary file, I have made a ugly script that simply replaces all (or most) German text with English translations, and recalculates the checksums.

![](images/settings.png)

## Instructions:

1. Download https://www.skyynet.de/ftp/mspitzel_v105.zip
2. Unzip and load it in the Arduino IDE
3. Modify def_ssid and def_pass to match your WIFI's SSID and password
4. Modify http_username and http_password to what you want
5. Compile and install on the ESP32.
6. When the ESP32 connects to you WiFi, go http://<IP>:8080
7. Upload my modified binary file
8. Wait! it takes about 2 full minutes before it returns "OK"
9. If you get "Fehler" just try again.
10. Go to http://<IP>
11. Go to the Configuration tab and input your robots bluetooth name under "SSID" and the mainboard serial number under "Mainboard SN"
12. Now it should connect to your robot and show all kinds of data.

## To add it to Home Assisntant:
<img src="images/homeassistant.png" width=50% height=50%>

Copy robomow.yaml to config/robomow.yaml

Add this to config/configuration.yaml
homeassistant:
  customize: !include robomow.yaml
