import QtQuick 2.8
import QtQuick.Studio.Components 1.0
import DigitalCluster 1.0

Item {
    id: bottomBar
    width: 1920
    height: 96
    property alias odometerDistance: odometerController.distance
    property alias currentTime: clock.currentTime
    property alias currentTemp: temperature.currentTemp

    Item {
        id: media
        x: 1446
        y: 12
        width: 450
        height: 72
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 24
    }

    Row {
        id: row
        y: 0
        width: 572
        height: 46
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 32
        spacing: 72

        OdometerController {
            id: odometerController
        }

        Temperature {
            id: temperature
        }

        Clock {
            id: clock
        }
    }
}

/*##^##
Designer {
    D{i:0;height:96;width:1920}D{i:9}
}
##^##*/

