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
                        <input type="checkbox" name="f_mix"/> Enable mixing<br/>
                        <input type="checkbox" name="f_invert_lr"/> Invert Left/Right<br/>
                        <input type="checkbox" name="f_invert_ud"/> Invert Up/Down<br/>
                        <input type="checkbox" name="f_swap_axes"/> Swap axes<br/>
                    </p>

                    <p>
                        <b>Channel:</b><br />
                        <input type="text" name="channel" value="100"/>
                    </p>

                    <p>
                        <b>Scale:</b><br />
                        <input type="text" name="scale" value="100"/>
                    </p>

                    <p>
                        <b>Exponential:</b><br />
                        <input type="text" name="exponential" value="0"/>
                    </p>

                    <p>
                        <b>Mix factor:</b><br />
                        <input type="text" name="mix" value="60"/>
                    </p>

                    </form>
                </div>
                <div class="card-footer">
                    <button onclick="onSaveSettings(this)" class="btn btn-primary">Apply Settings</button>
                    <div id="progress"></div>
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
    let progress = document.getElementById("progress");
    progress.innerHTML = "Applying...";

    let command = "C" + form.channel.value + " ";
    command += "S" + form.scale.value + " ";
    command += "E" + form.exponential.value + " ";
    command += "F" + form.mix.value + " ";
    command += "L" + (form.f_invert_lr.checked?1:0) + " ";
    command += "U" + (form.f_invert_ud.checked?1:0) + " ";
    command += "A" + (form.f_swap_axes.checked?1:0) + " ";
    command += "M" + (form.f_mix.checked?1:0) + " ";
 
    try {
        makeRequest("/send-command?command=" + command, function() {
            if (this.responseText != "Ok") throw this.responseText;
        });    
    } catch (e) {
        progress.innerHTML = "ERROR " + e;
        return;
    }

    //toast("Ok");
    progress.innerHTML = "Ok";
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