import QtQuick 2.8
import DigitalCluster 1.0
import QtQuick.Studio.Effects 1.0

Rectangle {
    id: ttbar
    width: 1920
    height: 64
    color: "#000000"
    Row {
        id: row
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.rightMargin: 125
        anchors.leftMargin: 125
        spacing: 20

        Item {
            id: beam
            width: 64
            height: 64
            Image {
                id: lowbeam
                x: 0
                y: 0
                opacity: Car3dControl.frontLightsOn ? 1.0 : 0.2
                source: "../controlPanel/assets/icon-low-beam.svg"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay
                    color: "#1fff5d"
                }
                sourceSize.height: 64
                sourceSize.width: 64
            }
        }

        Item {
            id: beam2
            width: 64
            height: 64
            Image {
                id: highbeam
                x: 0
                y: 0
                opacity: Car3dControl.highBeamOn ? 1.0 : 0.2
                source: "../controlPanel/assets/icon-high-beam.svg"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay2
                    color: "#1fff5d"
                }
                sourceSize.height: 64
                sourceSize.width: 64
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5;height:64;width:1920}D{i:1}
}
##^##*/

