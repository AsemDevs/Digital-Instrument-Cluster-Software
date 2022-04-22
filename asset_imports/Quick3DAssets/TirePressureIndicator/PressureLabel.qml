import QtQuick 2.12
import QtQuick3D 1.15
import QtQuick 2.15
import Quick3DAssets.TirePressureLabel 1.0


Node {
    id: rootNode
    visible: true

    Model {
        id: plane
        source: "#Rectangle"
        scale.z: 0.47
        scale.y: 0.21
        scale.x: 0.47
        materials: bgMaterial

        DefaultMaterial {
            id: bgMaterial

            lighting: DefaultMaterial.NoLighting
            diffuseMap: tirePressureLabelBg
            diffuseColor: "#ffffff"

            Texture {
                id: tirePressureLabelBg
                sourceItem: Rectangle {
                    id: pressLabel
                    width: 300
                    height: 135
                    radius: 25
                    border.width: 0
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#530a4e"
                        }

                        GradientStop {
                            position: 1
                            color: "#31075b"
                        }
                    }

                    Text {
                        id: pressuretext
                        color: "#c3c3c3"
                        text: "2.5 bar"
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 64
                        horizontalAlignment: Text.AlignHCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.weight: Font.Medium
                        font.family: Constants.font.family
                    }

                }
            }
        }
    }

    Model {
        id: plane1
        x: 0
        y: 35.56
        source: "#Rectangle"
        scale.z: 1
        scale.y: 0.2069
        scale.x: 0.52966
        z: 0
        //        materials: rectMaterial
        DefaultMaterial {
            id: rectMaterial
            diffuseColor: "#4aee45"
        }
    }
}


