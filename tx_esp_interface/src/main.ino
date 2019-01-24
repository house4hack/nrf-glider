#include <Arduino.h>

#include <ESP8266WiFi.h>          //ESP8266 Core WiFi Library (you most likely already have this in your sketch)
#include <DNSServer.h>            //Local DNS Server used for redirecting all requests to the configuration portal
#include <ESP8266WebServer.h>     //Local WebServer used to serve the configuration portal

#include "config.h"
#include "index.html.h"
#include "assets.h"
#include "timer.h"

const byte        DNS_PORT = 53;          // Capture DNS requests on port 53
IPAddress         apIP(10, 10, 10, 1);    // Private network for server
DNSServer         dnsServer;              // Create the DNS object
ESP8266WebServer  server(80);

Timer             debugTimer(1000);

void setup() {
    Serial.begin(9600);     // comms to MSP430
    Serial1.begin(9600);    // debug output
    debugTimer.start();
    startWifi();
}

void loop() {
    dnsServer.processNextRequest();
    server.handleClient(); 

    if (debugTimer.done()) {
        Serial1.print("WiFi clients: ");
        Serial1.println(WiFi.softAPgetStationNum());
    }
}

void startWifi() {
    Serial1.print("Setting soft-AP ... ");
    WiFi.mode(WIFI_AP);
    WiFi.softAPConfig(apIP, apIP, IPAddress(255, 255, 255, 0));
    boolean result = WiFi.softAP(WIFI_SSID, WIFI_PASS);

    if(result == true) {
        Serial1.println("Ready");
    } else {
        Serial1.println("Failed!");
    }

    handleWebsite();
}

void handleWebsite() {
  dnsServer.start(DNS_PORT, "*", apIP); // captive portal

  server.on("/app.js", [](){
      server.send(200, "text/javascript", FPSTR(APP_JS));
  });

  server.on("/app.css", [](){
      server.send(200, "text/stylesheet", FPSTR(APP_CSS));
  });

  server.on("/markup.js", [](){
      server.send(200, "text/javascript", FPSTR(MARKUP_JS));
  });

  server.on("/save-settings", []() {
      server.send(200, "text/plain", "TODO");
  });

  server.on("/", handleRoot);
  server.onNotFound(handleRoot);

  server.begin();
  Serial1.println("HTTP server started");
}

void handleRoot() {
  server.send(200, "text/html", FPSTR(INDEX_HTML));
}
