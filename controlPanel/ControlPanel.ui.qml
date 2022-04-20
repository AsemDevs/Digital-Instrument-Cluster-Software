import QtQuick 2.8
import QtQuick.Studio.Components 1.0
import DigitalCluster 1.0
import "btns.js" as Logic
Rectangle {
    id: controlPanel
    width: 1920
    height: 100
    color: "#0C0F16"
    focus: true
    property alias buttonsModesState: buttonsModes.state

    CPbutton {
        id: buttonPower
        x: 1753
        y: 26
        width: 120
        height: 50
        iconSource: "assets/icon-power.svg"
    }

    ButtonsLight {
        id: lights
        x: 161
        y: 26
    }

    GroupItem {
        id: views
        x: 442
        y: 26

        CPbutton {
            id: buttonAdas
            x: 0
            y: 0
            width: 120
            height: 50
            labelText: "adas"
            buttonState: "left"
            state: Car3dControl.viewState === "adas" ? "on" : "off"

            Connections {
                target: buttonAdas.mouseArea
                onClicked: {
                    Car3dControl.viewState = "adas"
                    Car3dControl.driverDoorOpen = false
                    Car3dControl.passengerDoorOpen = false
                    Car3dControl.trunkOpen = false
                }
            }
        }

        CPbutton {
            id: buttonBattery
            x: 121
            y: 0
            width: 120
            height: 50
            labelText: "battery"
            buttonState: "center"
            state: Car3dControl.viewState === "battery" ? "on" : "off"
        }

        CPbutton {
            id: buttonAmbient
            x: 242
            y: 0
            width: 120
            height: 50
            labelText: "interior"
            buttonState: "center"
            state: Car3dControl.viewState === "interior" ? "on" : "off"
        }

        CPbutton {
            id: buttonTirePressure
            x: 363
            y: 0
            width: 120
            height: 50
            buttonState: "center"
            labelText: "tires"
            Connections {
                target: buttonTirePressure.mouseArea
                onClicked: Car3dControl.viewState = "tirePressure"
            }
            state: Car3dControl.viewState === "tirePressure" ? "on" : "off"
        }

        CPbutton {
            id: buttonLights
            x: 484
            y: 0
            width: 120
            height: 50
            buttonState: "right"
            labelText: "lights"
            Connections {
                target: buttonLights.mouseArea
                onClicked: Car3dControl.viewState = "front"
            }
            state: Car3dControl.viewState === "front" ? "on" : "off"
        }
    }

    ButtonsModes {
        id: buttonsModes
        x: 1471
        y: 26
    }

    ButtonsDoors {
        id: buttonsDoors
        x: 1069
        y: 26
        visible: Car3dControl.viewState !== "interior"
    }

    FpsItem {
        id: fpsItem
        x: 40
        y: 50
    }

    ButtonsInteriorLight {
        id: buttonsInteriorLight
        x: 1069
        y: 26
        visible: Car3dControl.viewState === "interior"
    }

     Keys.onPressed: {
      switch (event.key) {
        case Qt.Key_B:
            Logic.activateBattery()
        break;
        case Qt.Key_A:
            Logic.activateInterior()
      }
    }
}

/*##^##
Designer {
    D{i:0;height:100;width:1920}
}
##^##*/

