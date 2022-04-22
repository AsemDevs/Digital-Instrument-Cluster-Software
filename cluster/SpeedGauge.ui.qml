import QtQuick 2.8
import DigitalCluster 1.0
import QtQuick.Studio.Effects 1.0

Item {
    id: speedGauge
    width: 720
    height: 720
    property real speed: 10

    Image {
        id: speedBlobShadow1
        x: 220
        y: 604
        width: 356
        height: 32
        visible: true
        source: "assets/blob-shadow.png"
    }

    SpeedBlob {
        id: speedBlob
        x: 30
        y: 19
        width: 674
        height: 720
        speed: speedGauge.speed
        opacity: 1
    }

    Item {
        id: speed
        x: 263
        y: 318
        width: 208
        height: 122
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            id: speedLabel
            x: 60
            y: 98
            width: 48
            height: 24
            color: "#000000"
            text: "km/h"
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            font.family: Constants.font.family
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: speedValue
            x: 0
            y: 0
            width: 188
            height: 115
            color: "#000000"
            text: Math.round(speedGauge.speed)
            font.pixelSize: 96
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            anchors.horizontalCenter: parent.horizontalCenter
            font.weight: Font.Medium
            font.family: Constants.font.family
        }
    }

    Image {
        id: speedoRing
        x: 202
        y: 221
        opacity: 0
        visible: true
        source: "assets/speedoRing.png"
        layer.enabled: true
        layer.effect: ColorOverlayEffect {
            id: colorOverlay
            color: Themes.speedoRingColor
        }
        fillMode: Image.PreserveAspectFit

        Image {
            id: speedoPointer
            x: 0
            y: 0
            source: "assets/speedoPointer.png"
            rotation: speedGauge.speed * 1.2 - 30
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }
    states: [
        State {
            name: "speedZero"
            when: Car3dControl.viewState == "adas"

            PropertyChanges {
                target: speedBlobShadow1
                x: 228
                width: 340
            }

            PropertyChanges {
                target: speedBlob
                opacity: 1
            }
        },
        State {
            name: "speedNormal"

            when: Car3dControl.viewState == "adas"
            PropertyChanges {
                target: speedBlobShadow1
                x: 220 - 45 + speedGauge.speed / 2
            }

            PropertyChanges {
                target: speedBlob
                opacity: 1
            }
        },
        State {
            name: "speedSimple"
            when: Car3dControl.viewState !== "adas"

            PropertyChanges {
                target: speedoRing
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: speedBlob
                opacity: 0
            }

            PropertyChanges {
                target: speedBlobShadow1
                opacity: 0
                visible: true
            }

            PropertyChanges {
                target: speedValue
                color: Themes.textColor
            }

            PropertyChanges {
                target: speedLabel
                color: Themes.textColor
            }
        }
    ]
    transitions: [
        Transition {
            id: transition
            ParallelAnimation {
                PropertyAnimation {
                    target: speedBlob
                    property: "opacity"
                    duration: 150
                }
                PropertyAnimation {
                    target: speedBlobShadow1
                    property: "width"
                    duration: 150
                }

                PropertyAnimation {
                    target: speedBlobShadow1
                    property: "x"
                    duration: 150
                }

                PropertyAnimation {
                    target: speedoRing
                    property: "opacity"
                    duration: 150
                }
            }

            to: "*"
            from: "*"
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#808080";height:720;width:720}D{i:21;transitionDuration:2000}
}
##^##*/

