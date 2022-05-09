import QtQuick 2.15
import QtQuick3D 1.15

Node {
    id: rootNode
    property alias doorLight_R_EmissiveColor: defaultMaterial_material.emissiveColor
    property alias doorLight_R_EmissiveFactor: defaultMaterial_material.emissiveFactor
    property alias doorLight_R_DiffuseColor: defaultMaterial_material.diffuseColor

    Model {
        id: doorLights_Right
        x: -63.9968
        y: 95.3154
        z: 11.3619
        eulerRotation.x: -90
        source: "meshes/doorLights_Right.mesh"

        DefaultMaterial {
            id: defaultMaterial_material
            emissiveFactor: 1
            emissiveColor: "#26c7ff"
            diffuseColor: "#ffcccccc"
        }
        materials: [
            defaultMaterial_material
        ]
    }
}
