import QtQuick 2.15
import QtQuick3D 1.15

Node {
    id: rootNode
    property alias interiorLightEmissiveColor: defaultMaterial_material.emissiveColor
    property alias interiorLightEmissiveFactor: defaultMaterial_material.emissiveFactor
    property alias interiorLightDiffuseColor: defaultMaterial_material.diffuseColor

    Model {
        id: interiorLigts
        x: -38.0015
        y: 71.152
        z: 37.2845
        eulerRotation.x: -90
        source: "meshes/interiorLigts.mesh"
        materials: defaultMaterial_material

        DefaultMaterial {
            id: defaultMaterial_material
            emissiveColor: "#26c7ff"
            emissiveFactor: 1
            diffuseColor: "#ffcccccc"
        }
    }
}
