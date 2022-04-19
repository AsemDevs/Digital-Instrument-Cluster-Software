import QtQuick 2.12
import DigitalCluster 1.0


Item {
    id: item1
    width: Constants.width
    height: Constants.height + controlPanel.height

    Cluster {
        id: cluster
        x: 0
        y: 0
        width: Constants.width
        height: Constants.height
    }

    ControlPanel {
        id: controlPanel
        x: 0
        y: 719
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 1
        onButtonsModesStateChanged: {
            Themes.currentTheme = controlPanel.buttonsModesState
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#000000";formeditorZoom:0.33}
}
##^##*/
