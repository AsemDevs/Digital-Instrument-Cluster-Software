import QtQuick 2.15
import QtQuick3D 1.15

Model {
    id: cube_001
    y: 0.289161
    scale.x: 70
    scale.y: 6
    scale.z: 95
    source: "meshes/cube_001.mesh"
    property alias battery_materialRoughness: battery_material.roughness
    property alias battery_materialMetalness: battery_material.metalness
    property alias battery_materialEmissiveColor: battery_material.emissiveColor

    PrincipledMaterial {
        id: battery_material
        metalness: 0.4
        roughness: 0.65
        emissiveColor: battery_material.emissiveColor
        baseColor: "#cfe6cf"
        cullMode: Material.NoCulling
    }
    materials: [
        battery_material
    ]
}
