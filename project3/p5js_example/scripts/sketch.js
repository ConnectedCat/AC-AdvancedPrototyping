let deviceURL = "https://api.particle.io/v1/devices/22003e000c47373336323230/pot_1_value?access_token=3fd176d457585d50a725733d120ccbf4dfe6652a"; //
let data; //the whole JSON load
let reading = 0; //reading for the specific sensor
let timeInt = 1000; //time interval in milliseconds
let currentT, prevT;

function setup() {
    createCanvas(windowWidth, windowHeight);
    data = loadJSON(deviceURL, parseData, handleError);
}

function draw() {
    currentT = millis()%timeInt;

    //if we chatch a falling edge
    if(currentT < prevT){
        data = loadJSON(deviceURL, parseData, handleError);
    }

    prevT = currentT;
}

// HELPER STUFF:

function windowResized() {
    resizeCanvas(windowWidth, windowHeight);
}

// DATA STUFF
function parseData(JSONload){
    reading = JSONload.result;
}

function handleError(Err){
    console.log("An error was encountered: " + Err);
}
