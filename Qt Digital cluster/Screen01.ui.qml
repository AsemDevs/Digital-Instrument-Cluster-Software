import QtQuick 2.12
import DigitalCluster 1.0
import "cluster"
import QtQuick.Timeline 1.0
import QtQuick3D 1.15
import QtQuick 2.15

Item {

    id: containerItem
    width: Constants.width
    height: Constants.height
    visible: true

    property int property0: 1

    Cluster {
        id: cluster
        x: 0
        y: 0
        width: 1920
        height: 720
    }
}

/*##^##
Designer {
    D{i:0;height:720;width:1920}
}
##^##*/

