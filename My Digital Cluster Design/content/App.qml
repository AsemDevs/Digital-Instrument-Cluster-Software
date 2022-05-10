/****************************************************************************
**
** Copyright (C) 2021 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of Qt Quick Studio Components.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.15
import QtQuick.Window 2.15
import UntitledProject2 1.0

import QtQuick 2.8
//import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0
import QtQuick.Extras 1.4
import QtQuick.Studio.Effects 1.0
import QtQuick.Controls.Styles 1.4

Window {
    width: 1920
    height: 720
    color: "black"
    visible: true
    title: "UntitledProject1"


    function toggle(indicator) {

            if (indicator.opacity == 0.3 ) {
                indicator.opacity = 1;
            } else {
                indicator.opacity = 0.3;
            }
        }

        function releaseSwitch(indicator) {
            if (indicator.opacity == 0.3) return;
            if (indicator.opacity == 1) return;
            toggle();
        }

    Screen01 {
        id: indicators
        y:30
                MouseArea { anchors.fill: parent;
            onClicked: {
                indicators.focus = true
            }
        }
    }

// Speedometer
    Item {
        x: 500
        y: 400
        CircularGauge {
            id: gauge

            value: accelerating ? maximumValue  : 0
            anchors.centerIn: parent
            maximumValue: 240
            stepSize:1
            property bool accelerating: false

            Keys.onPressed: {
                if (event.key == Qt.Key_W) {
                    accelerating = true;
                }
                if (event.key === Qt.Key_S) {
                    accelerating = false;
                    event.accepted = true;
                }
            }

            Keys.onReleased: {
                if (event.key === Qt.Key_W) {
                    accelerating = false;
                    event.accepted = true;
                }
            }

            Behavior on value {
                NumberAnimation {
                    duration: 2000
                }
            }
            style: CircularGaugeStyle {
                tickmarkStepSize: 1.00
                labelStepSize: 20
            }

            MouseArea { anchors.fill: parent;
                onClicked: {
                    gauge.focus = true
                }
            }
        }
    }
    Image {
        id: logo
        x: 840
        y: 300
        height: 200
        width: 200
        source: "Assets/gunsel_logo_dikey+1.png"
    }
// Battery Gauge
    Item {
        x: 1350
        y: 400
        CircularGauge {
            id: batteryGauge

            value: accelerating ? maximumValue  : 0
            anchors.centerIn: parent
            maximumValue: 255
            stepSize:127.5
            property bool accelerating: false

            Keys.onPressed: {
                if (event.key == Qt.Key_M) {
                    accelerating = true;
                }
                if (event.key === Qt.Key_N) {
                    accelerating = false;
                    event.accepted = true;
                }
            }

            Behavior on value {
                NumberAnimation {
                    duration: 2000
                }
            }
            style: CircularGaugeStyle {
                tickmarkStepSize: 1.00
                labelStepSize: 25
            }

            MouseArea { anchors.fill: parent;
                onClicked: {
                    batteryGauge.focus = true
                }
            }
        }
    }

}


