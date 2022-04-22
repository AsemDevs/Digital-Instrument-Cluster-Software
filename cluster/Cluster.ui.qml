import QtQuick 2.8
import QtQuick.Timeline 1.0
import DigitalCluster 1.0
import QtQuick.Controls 1.2 as Controls
import QtQuick.Studio.Components 1.0
import "btns.js" as Logic

Item {
    id: sportModeBatterySmallMediaPlayer
    width: 1920
    height: 720


    Item {
        id: background
        anchors.fill: parent
        Image {
            id: background1
            anchors.fill: parent
            source: Themes.backgroundImage
        }
    }

    Adas {
        id: adas
        x: 532
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.rightMargin: 0
    }

    SpeedGauge {
        id: speedGauge
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.leftMargin: 0
        speed: 240
    }

    BatteryGauge {
        id: batteryGauge
        x: 1200
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.rightMargin: 0
        batteryState: 1
        batteryLevel: 11
    }

    Gear {
        id: gear
        y: 390
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 32
        currentGear: 1
    }

    Range {
        id: range
        x: 1647
        y: 330
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 32
        currentRange: 351
    }

    BottomBar {
        id: bottomBar
        y: 624
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        currentTemp: 30
    }

    Telltales {
        id: tellTales
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.rightMargin: 0
        anchors.leftMargin: 0
    }

    function toggle(indicator) {
        
        if (indicator.opacity == 0.2 ) {
            indicator.opacity = 1;
        } else {
            indicator.opacity = 0.2;
        }
    }

    function releaseSwitch(indicator) {
        if (indicator.opacity == 0.2) return;
        if (indicator.opacity == 1) return;
        toggle();
    }

    GroupItem {
        id: indicatorsTR
        x: 1050

        Image {
            id: indicator39
            x: 100
            y: 10
            height: 40
            width: 40
            source: "assets/Asset 39.png"
            Keys.onPressed: {
                if (event.key == Qt.Key_5) {
                    toggle(indicator39)
                    releaseSwitch(indicator39)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator39.focus = true
                }
            }
        }
        Image {
            id: indicator40
            x: 180
            y: 10
            height: 40
            width: 40
            source: "assets/Asset 40.png"
                    Keys.onPressed: {
                if (event.key == Qt.Key_7) {
                    toggle(indicator40)
                    releaseSwitch(indicator40)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator40.focus = true
                }
            }
        }
        Image {
            id: indicator32
            x: 260
            y: 10
            height: 40
            width: 40
            source: "assets/Asset 32.png"
            Keys.onPressed: {
                if (event.key == Qt.Key_6) {
                    toggle(indicator32)
                    releaseSwitch(indicator32)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator32.focus = true
                }
            }
        }
        Image {
            id: indicator30
            x: 340
            y: 10
            height: 30
            width: 30
            source: "assets/Asset 30.png"
            Keys.onPressed: {
                if (event.key == Qt.Key_8) {
                    toggle(indicator30)
                    releaseSwitch(indicator30)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator30.focus = true
                }
            }
        }
        Image {
            id: indicator34
            x: 440
            y: 10
            height: 30
            width: 30
            source: "assets/Asset 34.png"
            Keys.onPressed: {
                if (event.key == Qt.Key_R) {
                    toggle(indicator34)
                    releaseSwitch(indicator34)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator34.focus = true
                }
            }
        }
    }
    GroupItem {
        id: indicatorsTL
        x: 50

        Image {
            id: indicator41
            x: 320
            y: 10
            height: 30
            width: 30
            source: "assets/Asset41.png"
            Keys.onPressed: {
                if (event.key == Qt.Key_1) {
                    toggle(indicator41)
                    releaseSwitch(indicator41)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator41.focus = true
                }
            }
        }
        Image {
            id: indicator44
            x: 400
            y: 10
            height: 30
            width: 30
            source: "assets/Asset44.png"
                    Keys.onPressed: {
                if (event.key == Qt.Key_2) {
                    toggle(indicator44)
                    releaseSwitch(indicator44)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator44.focus = true
                }
            }
        }
        Image {
            id: indicator42
            x: 480
            y: 10
            height: 30
            width: 30
            source: "assets/Asset42.png"
            Keys.onPressed: {
                if (event.key == Qt.Key_3) {
                    toggle(indicator42)
                    releaseSwitch(indicator42)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator42.focus = true
                }
            }
        }

    }

        GroupItem {
        id: indicatorsBRs
        x: 650
        y: 650
        Image {
            id: indicator51
            x: 740
            y: 10
            height: 30
            width: 30
            source: "assets/Asset 51.png"
            Keys.onPressed: {
                if (event.key == Qt.Key_E) {
                    toggle(indicator51)
                    console.log("indicator51")
                    releaseSwitch(indicator51)
                }
            }
            MouseArea {
                onClicked: {
                    indicator51.focus = true
                }
            }
        }
        Image {
            id: indicator50
            x: 800
            y: 10
            height: 30
            width: 30
            source: "assets/Asset 50.png"
            Keys.onPressed: {
                if (event.key == Qt.Key_F) {
                    toggle(indicator50)
                    releaseSwitch(indicator50)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator50.focus = true
                }
            }
        }
        Image {
            id: indicator38
            x: 860
            y: 10
            height: 30
            width: 30
            source: "assets/Asset 38.png"
            Keys.onPressed: {
                if (event.key == Qt.Key_T) {
                    toggle(indicator38)
                    releaseSwitch(indicator38)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator38.focus = true
                }
            }
        }
        Image {
            id: indicator49
            x: 920
            y: 10
            height: 30
            width: 30
            source: "assets/Asset 49.png"
            Keys.onPressed: {
                if (event.key == Qt.Key_Y) {
                    toggle(indicator49)
                    releaseSwitch(indicator49)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator49.focus = true
                }
            }
        }
        Image {
            id: indicator46
            x: 980
            y: 10
            height: 30
            width: 30
            source: "assets/Asset 46.png"
            Keys.onPressed: {
                if (event.key == Qt.Key_U) {
                    toggle(indicator46)
                    releaseSwitch(indicator46)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator46.focus = true
                }
            }
        }
        Image {
            id: indicator45
            x: 1040
            y: 10
            height: 30
            width: 30
            source: "assets/Asset 45.png"
            Keys.onPressed: {
                if (event.key == Qt.Key_I) {
                    toggle(indicator45)
                    releaseSwitch(indicator45)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator45.focus = true
                }
            }
        }
        Image {
            id: indicator48
            x: 1100
            y: 10
            height: 30
            width: 30
            source: "assets/Asset 48.png"
            Keys.onPressed: {
                if (event.key == Qt.Key_O) {
                    toggle(indicator48)
                    releaseSwitch(indicator48)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator48.focus = true
                }
            }
        }
        Image {
            id: indicator33
            x: 1160
            y: 10
            height: 30
            width: 30
            source: "assets/Asset 33.png"
            Keys.onPressed: {
                if (event.key == Qt.Key_G) {
                    toggle(indicator33)
                    releaseSwitch(indicator33)
                }
            }
            MouseArea { anchors.fill: parent;
                onClicked: {
                    indicator33.focus = true
                }
            }
        }
    }


    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                pingPong: true
                running: true
                loops: -1
                duration: 15000
                to: 100
                from: 0
            }
        ]
        enabled: true
        endFrame: 100
        startFrame: 0

        KeyframeGroup {
            target: speedGauge
            property: "speed"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 16
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 100
                value: 200
            }

            Keyframe {
                easing.bezierCurve: [0.2, 0.2, 0.8, 0.8, 1, 1]
                frame: 31
                value: 5
            }
        }

        KeyframeGroup {
            target: batteryGauge
            property: "batteryLevel"
            Keyframe {
                frame: 0
                value: 100
            }

            Keyframe {
                frame: 40
                value: 50
            }

            Keyframe {
                value: 50
                frame: 55
            }

            Keyframe {
                value: 100
                frame: 100
            }
        }

        KeyframeGroup {
            target: batteryGauge
            property: "batteryState"
            Keyframe {
                value: 2
                frame: 0
            }

            Keyframe {
                value: 0
                frame: 40
            }

            Keyframe {
                value: 1
                frame: 55
            }

            Keyframe {
                value: 1
                frame: 100
            }

            Keyframe {
                value: 2
                frame: 39
            }

            Keyframe {
                value: 0
                frame: 54
            }
        }

        KeyframeGroup {
            target: bottomBar
            property: "odometerDistance"
            Keyframe {
                value: 17113
                frame: 0
            }

            Keyframe {
                value: 17158
                frame: 100
            }
        }

        KeyframeGroup {
            target: gear
            property: "currentGear"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 0
                frame: 16
            }

            Keyframe {
                value: 1
                frame: 17
            }

            Keyframe {
                value: 1
                frame: 31
            }

            Keyframe {
                value: 2
                frame: 32
            }

            Keyframe {
                value: 2
                frame: 46
            }

            Keyframe {
                value: 3
                frame: 47
            }
        }

        KeyframeGroup {
            target: gear
            property: "currentDriveMode"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 0
                frame: 25
            }

            Keyframe {
                value: 1
                frame: 26
            }

            Keyframe {
                value: 1
                frame: 52
            }

            Keyframe {
                value: 0
                frame: 53
            }

            Keyframe {
                value: 0
                frame: 75
            }

            Keyframe {
                value: 1
                frame: 76
            }
        }

        KeyframeGroup {
            target: bottomBar
            property: "currentTemp"
            Keyframe {
                value: 27
                frame: 0
            }

            Keyframe {
                value: 30
                frame: 100
            }
        }

        KeyframeGroup {
            target: range
            property: "currentRange"
            Keyframe {
                value: 346
                frame: 0
            }

            Keyframe {
                value: 351
                frame: 100
            }
        }
    }
     
}

/*##^##
Designer {
    D{i:0;height:720;width:1920}D{i:2}D{i:1}D{i:3}D{i:4}D{i:5}D{i:6}D{i:8}D{i:9}D{i:10}
}
##^##*/

