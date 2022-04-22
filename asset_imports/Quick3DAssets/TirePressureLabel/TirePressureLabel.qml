import QtQuick 2.15
import QtQuick3D 1.15
import DigitalCluster 1.0

Node {
    id: rootNode

    Model {
        id: plane001
        eulerRotation.x: -90
        source: "meshes/plane001.mesh"
        materials: defaultMaterial

        DefaultMaterial {
            id: defaultMaterial
            blendMode: DefaultMaterial.SourceOver
            lighting: DefaultMaterial.FragmentLighting
            emissiveFactor: 0.25
            diffuseMap: tirePressureLabelBg
            diffuseColor: "#ffffff"
            emissiveMap: tirePressureLabelBg

            Texture {
                id: tirePressureLabelBg
                sourceItem: Rectangle {
                    id: pressLabel
                    width: 300
                    height: 153
                    border.width: 0
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#ac7786"
                        }

                        GradientStop {
                            position: 1
                            color: "#9772a0"
                        }
                    }

                    Text {
                        id: pressuretext
                        color: "#f0f0f0"
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
}
