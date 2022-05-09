import QtQuick 2.8
import QtQuick.Studio.Components 1.0
import DigitalCluster 1.0

GroupItem {
    id: lights
    state: "off"

    CPbutton {
        id: buttonLowBeam
        x: 0
        y: 0
        width: 120
        height: 50
        iconSource: "assets/icon-low-beam.svg"
        buttonState: "left"
        Connections {
            target: buttonLowBeam.mouseArea
            onClicked: {
                Car3dControl.frontLightsOn = !Car3dControl.frontLightsOn
            }
        }
    }

    CPbutton {
        id: buttonHightBeam
        x: 121
        y: 0
        width: 120
        height: 50

        iconSource: "assets/icon-high-beam.svg"
        buttonState: "right"
        Connections {
            target: buttonHightBeam.mouseArea
            onClicked: Car3dControl.highBeamOn = !Car3dControl.highBeamOn
        }
    }

    states: [
        State {
            name: "off"
            when: !Car3dControl.frontLightsOn && !Car3dControl.highBeamOn
        },
        State {
            name: "lowBeam"
            when: Car3dControl.frontLightsOn && !Car3dControl.highBeamOn

            PropertyChanges {
                target: buttonLowBeam
                state: "on"
            }
        },
        State {
            name: "highBeam"
            when: !Car3dControl.frontLightsOn && Car3dControl.highBeamOn

            PropertyChanges {
                target: buttonHightBeam
                state: "on"
            }
        },
        State {
            name: "allBeams"
            when: Car3dControl.frontLightsOn && Car3dControl.highBeamOn

            PropertyChanges {
                target: buttonLowBeam
                state: "on"
            }

            PropertyChanges {
                target: buttonHightBeam
                state: "on"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;height:50;width:242}
}
##^##*/

