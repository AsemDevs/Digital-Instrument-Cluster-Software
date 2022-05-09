// import QtQuick 2.8
// import QtQuick.Studio.Components 1.0
// import DigitalCluster 1.0

// GroupItem {
//     id: buttonsDoors
//     CPbutton {
//         id: buttonDoorLeft
//         x: 0
//         y: 0
//         width: 120
//         height: 50
//         iconSource: "assets/icon-door-left.svg"
//         buttonState: "left"
//         state: Car3dControl.driverDoorOpen ? "on" : "off"

//         Connections {
//             target: buttonDoorLeft.mouseArea
//             onClicked: {
//                 Car3dControl.driverDoorOpen = !Car3dControl.driverDoorOpen
//                 Car3dControl.viewState = "left"
//             }
//         }
//     }

//     CPbutton {
//         id: buttonTrunk
//         x: 121
//         y: 0
//         width: 120
//         height: 50
//         iconSource: "assets/icon-trunk.svg"
//         buttonState: "center"
//         state: Car3dControl.trunkOpen ? "on" : "off"

//         Connections {
//             target: buttonTrunk.mouseArea
//             onClicked: {
//                 Car3dControl.trunkOpen = !Car3dControl.trunkOpen
//                 Car3dControl.viewState = "left"
//             }
//         }
//     }

//     CPbutton {
//         id: buttonDoorRight
//         x: 242
//         y: 0
//         width: 120
//         height: 50
//         iconSource: "assets/icon-door-right.svg"
//         buttonState: "right"
//         state: Car3dControl.passengerDoorOpen ? "on" : "off"

//         Connections {
//             target: buttonDoorRight.mouseArea
//             onClicked: {
//                 Car3dControl.passengerDoorOpen = !Car3dControl.passengerDoorOpen
//                 Car3dControl.viewState = "right"
//             }
//         }
//     }
// }

// /*##^##
// Designer {
//     D{i:0;height:50;width:362}
// }
// ##^##*/

