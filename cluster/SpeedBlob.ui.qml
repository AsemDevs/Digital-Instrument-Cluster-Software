import QtQuick 2.8
import "../blob"
import QtQuick.Studio.Effects 1.0
import DigitalCluster 1.0

Item {
    id: speedBlob
    width: 500
    height: 500
    state: "State1"
    property real speed: 50

    Image {
        id: background
        visible: false
        source: "../blob/img/background.png"
        anchors.fill: parent
        fillMode: Image.Tile
    }

    Item {
        id: itemGradient
        width: 500
        height: 500
        visible: false

        Rectangle {
            id: rectGradient
            visible: true
            border.color: "#9759b5"
            anchors.fill: parent
            rotation: -blob.rotation
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: Themes.speedBlobColorTop
                }
                GradientStop {
                    position: 1
                    color: Themes.speedBlobColorBottom
                }
            }
        }
    }

    ShaderEffectSource {
        id: gradientBlob
        sourceItem: itemGradient
    }

    Item {
        id: item1
        anchors.fill: parent
        layer.effect: InnerShadowEffect {
            id: innerShadow
            opacity: 0.036
            visible: true
            color: "#e588a4"
            spread: 0.5
            horizontalOffset: 0
            fast: false
        }
        layer.enabled: true

        Blob {
            id: blob
            anchors.fill: parent
            blobSizeOffset: 0
            speed: speedBlob.speed
            rotation: speedBlob.speed * 1.2 - 120
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.bottomMargin: 0
            texture: gradientBlob
            ringCount: 0.
            ringMinDist: 0.
            ringMaxDist: 100.
            ringWidth: 1.5
            easing: 1.
            density: 0
            main_ring_dist: 0
        }
    }
    states: [
        State {
            name: "State1"

            PropertyChanges {
                target: item1
                width: 500
                height: 500
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66;height:720;width:674}D{i:1;invisible:true}
}
##^##*/

