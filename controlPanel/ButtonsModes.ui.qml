// import QtQuick 2.8
// import QtQuick.Studio.Components 1.0

// GroupItem {
//     id: buttonsModes
//     width: 241
//     state: "darkMode"
//     CPbutton {
//         id: buttonB1
//         x: 0
//         y: 0
//         width: 120
//         height: 50
//         labelText: "dark"
//         buttonState: "left"

//         Connections {
//             target: buttonB1.mouseArea
//             onClicked: buttonsModes.state = "darkMode"
//         }
//     }

//     CPbutton {
//         id: buttonB2
//         x: 121
//         y: 0
//         width: 120
//         height: 50
//         labelText: "light"
//         buttonState: "right"

//         Connections {
//             target: buttonB2.mouseArea
//             onClicked: buttonsModes.state = "lightMode"
//         }
//     }
//     states: [
//         State {
//             name: "darkMode"

//             PropertyChanges {
//                 target: buttonB1
//                 state: "on"
//             }
//         },
//         State {
//             name: "lightMode"

//             PropertyChanges {
//                 target: buttonB2
//                 state: "on"
//             }
//         }
//     ]
// }

// /*##^##
// Designer {
//     D{i:0;height:50;width:241}
// }
// ##^##*/

