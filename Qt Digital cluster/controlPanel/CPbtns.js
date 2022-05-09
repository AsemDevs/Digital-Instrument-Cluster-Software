function activateBattery(mode) {
    Car3dControl.viewState = mode
}

function activateInterior(mode) {
    Car3dControl.viewState = mode
}

function activateAdas(mode) {
    Car3dControl.viewState = mode
    Car3dControl.driverDoorOpen = false
    Car3dControl.passengerDoorOpen = false
    Car3dControl.trunkOpen = false
}

function activateHighBeam(mode) {
    Car3dControl.highBeamOn = !Car3dControl.highBeamOn
    Car3dControl.viewState = mode
}

function activateLowBeam(mode) {
    Car3dControl.frontLightsOn = !Car3dControl.frontLightsOn
    Car3dControl.viewState = mode
}
