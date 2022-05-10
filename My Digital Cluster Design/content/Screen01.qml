/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0 

import UntitledProject2 1.0


// Top Left Indicators
GroupItem {
    id: top
    focus: true
    x: 350

    Image {
        id: indicator41
        x: 40
        y: 40
        height: 30
        width: 30
        source: "Assets/Indicators/Asset41.png"
    }
    Image {
        id: indicator44
        x: 80
        y: 35
        height: 30
        width: 30
        source: "Assets/Indicators/Asset44.png"
    }
    Image {
        id: indicator42
        x: 120
        y: 30
        height: 30
        width: 30
        source: "Assets/Indicators/Asset42.png"
    }
    Image {
        id: indicator51
        x: 160
        y: 30
        height: 30
        width: 30
        source: "Assets/Indicators/Asset51.png"
    }
    Image {
        id: indicatorHB
        x: 200
        y: 35
        height: 30
        width: 30
        source: "Assets/Indicators/High_Beam.png"
    }
    Image {
        id: indicator18
        x: 240
        y: 40
        height: 30
        width: 30
        source: "Assets/Indicators/Asset 18.png"
    }
// Top Right Indicators
    GroupItem {
        id: topRight
        x: 850
        Image {
            id: indicator39
            x: 40
            y: 40
            height: 30
            width: 30
            source: "Assets/Indicators/Asset 39.png"
        }

        Image {
            id: indicator40
            x: 80
            y: 35
            height: 30
            width: 30
            source: "Assets/Indicators/Asset 40.png"
        }
        Image {
            id: indicator32
            x: 120
            y: 30
            height: 30
            width: 30
            source: "Assets/Indicators/Asset 32.png"
        }
        Image {
            id: indicator30
            x: 160
            y: 30
            height: 30
            width: 30
            source: "Assets/Indicators/Asset 30.png"
        }
        Image {
            id: indicatorLB
            x: 200
            y: 35
            height: 30
            width: 30
            source: "Assets/Indicators/Low_Beam.png"
        }
        Image {
            id: indicator34
            x: 240
            y: 40
            height: 30
            width: 30
            source: "Assets/Indicators/Asset 34.png"
        }
    }
// Bottom Indicators
    GroupItem {
        id: bottom
        x: 450
        y: 600
        Image {
            id: indicator512
            x: 0
            y: 10
            height: 30
            width: 30
            source: "Assets/Indicators/Asset51.png"
        }
        Image {
            id: indicator50
            x: 40
            y: 10
            height: 30
            width: 30
            source: "Assets/Indicators/Asset 50.png"
        }
        Image {
            id: indicator38
            x: 80
            y: 10
            height: 30
            width: 30
            source: "Assets/Indicators/Asset 38.png"
        }
        Image {
            id: indicator49
            x: 120
            y: 10
            height: 30
            width: 30
            source: "Assets/Indicators/Asset 49.png"
        }
        Image {
            id: indicator46
            x: 160
            y: 10
            height: 30
            width: 30
            source: "Assets/Indicators/Asset 46.png"
        }

        Image {
            id: indicator45
            x: 200
            y: 10
            height: 30
            width: 30
            source: "Assets/Indicators/Asset 45.png"
        }
        Image {
            id: indicator48
            x: 240
            y: 10
            height: 30
            width: 30
            source: "Assets/Indicators/Asset 48.png"
        }
        Image {
            id: indicator33
            x: 280
            y: 10
            height: 30
            width: 30
            source: "Assets/Indicators/Asset 33.png"
        }
    }
// Logic
    Keys.onPressed: {
        switch( event.key ) {
            case Qt.Key_1:
                toggle(indicator41)
                releaseSwitch(indicator41)
            break;
            case Qt.Key_L:
                toggle(indicator18)
                releaseSwitch(indicator18)
            break;
            case Qt.Key_H:
                toggle(indicatorHB)
                releaseSwitch(indicatorHB)
            break;
            case Qt.Key_2:
                toggle(indicator44)
                releaseSwitch(indicator44)
            break;
            case Qt.Key_3:
                toggle(indicator42)
                releaseSwitch(indicator42)
            break;
            case Qt.Key_4:
                toggle(indicator51)
                releaseSwitch(indicator51)
            break;
            case Qt.Key_5:
                toggle(indicator39)
                releaseSwitch(indicator39)
            break;
            case Qt.Key_7:
                toggle(indicator40)
                releaseSwitch(indicator40)
            break;
            case Qt.Key_6:
                toggle(indicator32)
                releaseSwitch(indicator32)
            break;
            case Qt.Key_8:
                toggle(indicator30)
                releaseSwitch(indicator30)
            break;
            case Qt.Key_E:
                toggle(indicator512)
                releaseSwitch(indicator512)
            break;
            case Qt.Key_F:
                toggle(indicator50)
                releaseSwitch(indicator50)
            break;
            case Qt.Key_T:
                toggle(indicator38)
                releaseSwitch(indicator38)
            break;
            case Qt.Key_Y:
                toggle(indicator49)
                releaseSwitch(indicator49)
            break;
            case Qt.Key_U:
                toggle(indicator46)
                releaseSwitch(indicator46)
            break;
            case Qt.Key_I:
                toggle(indicator45)
                releaseSwitch(indicator45)
            break;
            case Qt.Key_O:
                toggle(indicator48)
                releaseSwitch(indicator48)
            break;
            case Qt.Key_G:
                toggle(indicator33)
                releaseSwitch(indicator33)
            break;
            case Qt.Key_R:
                toggle(indicator34)
                releaseSwitch(indicator34)
            break;
        }
    }
}