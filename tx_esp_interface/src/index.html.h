#include <Arduino.h>
#ifndef __INDEX_HTML__
#define __INDEX_HTML__

const char INDEX_HTML[] PROGMEM = R"=====(
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width = device-width, initial-scale = 1.0, maximum-scale = 1.0, user-scalable=0">
    <title>House4Hack NRF Glider</title>

    <script src="markup.js"></script>
    <link rel="stylesheet" href="app.css">
</head>

<body>
    <div class="container">

        <p style="display: flex; justify-content: center">
            <b>House4Hack NRF Glider</b>
        </p>

        <div class="cards">
            <div class="card">
                <div class="card-header">
                    <div class="card-title h5">Configuration</div>
                </div>
                <div class="card-body">
                    <form name="settingsForm">
                    <p>
                        <b>Flags:</b><br />
                        <input type="checkbox" name="flags" value="0"/> Enable mixing<br/>
                        <input type="checkbox" name="flags" value="0"/> Invert Left/Right<br/>
                        <input type="checkbox" name="flags" value="0"/> Invert Up/Down<br/>
                        <input type="checkbox" name="flags" value="0"/> Swap axes<br/>
                    </p>

                    <p>
                        <b>Channel:</b><br />
                        <select name="channel">
                            <option>0</option>
                            <option>100</option>
                            <option>110</option>
                            <option>120</option>
                        </select>
                    </p>
                    </form>
                </div>
                <div class="card-footer">
                    <button onclick="onSaveSettings(this)" class="btn btn-primary">Apply Settings</button>
                </div>
            </div>
        </div>

    <script src="app.js"></script>
</body>

</html>
)=====";

const char APP_JS[] PROGMEM = R"=====(
function onSaveSettings(button) {
    let form = document.forms[0];
    let params = "";

    makeRequest("/save-settings?" + params, function() {
        toast(this.responseText);
    });    
}

function makeRequest(url, onComplete) {
    var oReq = new XMLHttpRequest();
    oReq.addEventListener("load", onComplete);
    oReq.open("GET", url);
    oReq.send();        
}

function toast(message) {
    console.log(message);
    alert(message);
}
)=====";

#endif