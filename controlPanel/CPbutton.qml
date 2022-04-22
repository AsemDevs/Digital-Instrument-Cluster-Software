import QtQuick 2.8
import DigitalCluster 1.0

Item {
    id: cpbutton
    width: 120
    height: 50
    property alias mouseArea: mouseArea
    property alias labelText: buttonLabel.text
    property alias buttonState: buttonbg.state
    property alias iconSource: buttonIcon.source
    state: "off"


    CPbuttonBg {
        id: buttonbg
        anchors.fill: parent
        bgColor: "#343d4e"
    }

    Item {
        id: buttonContent
        opacity: 0.5
        anchors.fill: parent


        Image {
            id: buttonIcon
            visible: cpbutton.labelText === "" ? true : false
            source: ""
            cache: false
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }

        Text {
            id: buttonLabel
            y: 10
            height: 29
            visible: cpbutton.labelText === "" ? false : true
            color: "#ffffff"
            text: ""
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.right: parent.right
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            font.family: Constants.font.family
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    states: [
        State {
            name: "off"
        },
        State {
            name: "on"

            PropertyChanges {
                target: buttonbg
                bgColor: "#63708b"
            }

            PropertyChanges {
                target: buttonContent
                opacity: 1
            }
        },
        State {
            name: "disabled"

            PropertyChanges {
                target: buttonContent
                opacity: 0.15
            }

            PropertyChanges {
                target: mouseArea
                enabled: false
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;height:50;width:120}D{i:1}D{i:3;uuid:"c12ebf8e-585e-5548-8009-762747016f97"}
D{i:4}D{i:2;uuid:"c12ebf8e-585e-5548-8009-762747016f97"}
}
##^##*/

