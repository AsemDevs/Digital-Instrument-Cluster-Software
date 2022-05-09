import QtQuick 2.15
import QtQuick3D 1.15

Node {
    id: rootNode

    Model {
        id: plane003
        x: -20.8324
        y: 2.25041
        z: 12.6005
        eulerRotation.x: -90
        source: "meshes/plane003.mesh"

        DefaultMaterial {
            id: material__120_material
            diffuseMap: Texture {
                source: "maps/CarShadow.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
        }
        materials: [
            material__120_material
        ]
    }
}
