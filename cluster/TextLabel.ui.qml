import QtQuick 2.8

Item {
    id: textLabel
    width: 100
    height: 29
    property alias mENUText: mENU.text

    Text {
        id: mENU
        x: 0
        y: 0
        width: 101
        height: 29
        color: "#ffffff"
        text: "MENU"
        font.pixelSize: 24
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: Constants.font.family
        font.weight: Font.Normal
    }
}

/*##^##
Designer {
    D{i:0;uuid:"86e4694e-fdcf-50d3-a9c6-2f05480c61b1"}D{i:1;uuid:"67fe4b92-cf91-5ce7-bf4d-4a611b881c98"}
}
##^##*/

