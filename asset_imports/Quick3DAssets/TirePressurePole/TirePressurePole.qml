import QtQuick 2.15
import QtQuick3D 1.15

Node {
    id: rootNode

    Model {
        id: sphere001
        x: 91.198
        y: 37.0318
        z: 106.309
        eulerRotation.y: -90
        eulerRotation.z: 2.50448e-06
        source: "meshes/sphere001.mesh"

        DefaultMaterial {
            id: defaultMaterial_material
            blendMode: DefaultMaterial.Screen
            lighting: DefaultMaterial.NoLighting
            diffuseColor: "#c376d5"
        }
        materials: [
            defaultMaterial_material
        ]
    }
}
