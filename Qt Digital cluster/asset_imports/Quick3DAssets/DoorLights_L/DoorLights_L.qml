import QtQuick 2.15
import QtQuick3D 1.15

Node {
    id: rootNode
    property alias doorLight_L_EmissiveColor: defaultMaterial_material.emissiveColor
    property alias doorLight_L_EmissiveFactor: defaultMaterial_material.emissiveFactor
    property alias doorLight_L_DiffuseColor: defaultMaterial_material.diffuseColor


    Model {
        id: doorLights_Left
        x: 63.9747
        y: 87.065
        z: -5.14593
        eulerRotation.x: -90
        source: "meshes/doorLights_Left.mesh"

        DefaultMaterial {
            id: defaultMaterial_material
            emissiveFactor: 1
            emissiveColor: "#26c7ff"
            diffuseColor: "#26c7ff"
        }
        materials: [
            defaultMaterial_material
        ]
    }
}
