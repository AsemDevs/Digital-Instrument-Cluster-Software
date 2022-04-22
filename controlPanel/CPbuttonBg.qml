import QtQuick 2.8
import QtQuick.Studio.Effects 1.0

Item {
    id: item1
    implicitWidth: 120
    implicitHeight: 50
    property color bgColor: "#63708B"

    state: "single"

    layer.enabled: true
    layer.effect: ColorOverlayEffect {
        id: colorOverlay
        color: bgColor
    }

    Rectangle {
        id: bgSingleAndCenter
        visible: false
        color: "#343d4e"
        radius: 8
        anchors.fill: parent

    }

    Image {
        id: bgleft
        y: 0
        visible: false
        anchors.left: parent.left
        source: "assets/bgLeft.svg"
        anchors.leftMargin: 0
    }

    Image {
        id: bgRight
        y: 0
        visible: false
        anchors.right: parent.right
        source: "assets/bgRight.svg"
        anchors.rightMargin: 0
    }
    states: [
        State {
            name: "single"

            PropertyChanges {
                target: bgSingleAndCenter
                visible: true
            }
        },
        State {
            name: "center"
            PropertyChanges {
                target: bgSingleAndCenter
                visible: true
                radius: 0
            }
        },
        State {
            name: "left"

            PropertyChanges {
                target: bgleft
                visible: true
            }
        },
        State {
            name: "right"

            PropertyChanges {
                target: bgRight
                visible: true
            }

            PropertyChanges {
                target: item1
                clip: true
            }
        }
    ]
}



/*##^##
Designer {
    D{i:0;formeditorColor:"#c0c0c0";height:50;width:120}D{i:2}D{i:3}
}
##^##*/
