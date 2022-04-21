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
    // property alias buttonsModesState: buttonsModes.state


    ButtonsLight {
        id: lights
        x: 161
        y: 26
    } 

    GroupItem {
        id: views
        x: 650
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
            state: Car3dControl.viewState === "front" ? "on" : "off"
        }
    }

    FpsItem {
        id: fpsItem
        x: 40
        y: 50
    }

     Keys.onPressed: {
      switch (event.key) {
        case Qt.Key_F1:
            Logic.activateAdas("adas")
        break;
        case Qt.Key_F2:
            Logic.activateBattery("battery")
        break;
        case Qt.Key_F3:
            Logic.activateInterior("interior")
        break;
        case Qt.Key_H:
            Logic.activateHighBeam("front")
        break;
        case Qt.Key_Y:
            Logic.activateLowBeam("front")
        break;
        case Qt.Key_1:
            Logic.activateAsset41()
      }
    }
}

/*##^##
Designer {
    D{i:0;height:100;width:1920}
}
##^##*/

