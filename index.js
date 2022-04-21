// testing ground for keypress events and js logic

/*
    - keypress events are triggered by the user pressing a key on the keyboard.
    - each key has a unique code.
    - each key will do a specific action when pressed.
    - Digit1 > turn on and off when pressed > Asset41.png
    - Digit2 > turn on and off when pressed > Asset44.png
    - Digit3 > turn on and off when pressed > Asset42.png
    - Digit4 > turn on and off when pressed > Asset51.png
    - [x] KeyH > turn on and off when pressed > High_Beam.png
    - KeyL > turn on and off when pressed > Asset18.png
    - Also if the status is Turned on Asset 18 should be blink up to the turned off!
    - Digit5 > turn on and off when pressed > Asset39.png
    - Digit6 > turn on and off when pressed > Asset32.png
    - Digit7 > turn on and off when pressed > Asset40.png
    - Digit8 > turn on and off when pressed > Asset30.png
    - [x] KeyY > turn on and off when pressed > Low_Beam.png
    - KeyR > turn on and off when pressed > Asset34.png
    - Also if the status is Turned on Asset 34 should be blink up to the turned off!
    - KeyE > turn on and off when pressed > Asset51.png
    - KeyF > turn on and off when pressed > Asset50.png
    - KeyT > turn on and off when pressed > Asset38.png
    - KeyY > turn on and off when pressed > Asset49.png
    - KeyU > turn on and off when pressed > Asset46.png
    - KeyI > turn on and off when pressed > Asset45.png
    - KeyO > turn on and off when pressed > Asset48.png
    - KeyG > turn on and off when pressed > Asset33.png
    - KeyW > Arc should be grown around the gauge
    - KeyS > Arc should be shrunk around the gauge
    - KeyM > Arc should be grown from Half of the Gauge To Left origin
    - KeyN > Arc should reduce the Gauge ARC and numerical values
    - KeyJ > Arc should be grown from Half of the Gauge To Right origin
    - KeyK > Arc should reduce the Gauge ARC and numerical values.
    - if KeyZ > Gear Should be "D"
    - KeyX > Gear Should be "N"
    - KeyC > Gear Should be "R"
    - KeyV > Gear Should be "P"

*/
const log = document.getElementById('log');

document.addEventListener('keypress', logKey);

function logKey(e) {
  console.log(` ${e.code}`);
}