import QtQuick 2.15
import QtQuick3D 1.15

Node {
    id: rootNode
    property alias powerCable_materialEmissiveFactor: powerCable_material.emissiveFactor

    Node {
        id: battery
        y: 37.1467
        z: -6.57201
        eulerRotation.x: -90

        Model {
            id: backMotor
            x: -0.00150466
            y: 135.958
            z: -0.139786
            source: "meshes/backMotor.mesh"

            PrincipledMaterial {
                id: motors_material
                metalness: 0.6
                roughness: 0.8
                baseColor: "#ddf3f3"

            }
            materials: [
                motors_material
            ]
        }

        Model {
            id: frontMotors
            x: -1.90735e-06
            y: -140.554
            z: -0.139786
            source: "meshes/frontMotors.mesh"
            materials: [
                motors_material
            ]
        }

        Model {
            id: line001
            x: 2.50093e-06
            y: 50.6425
            z: -1.53307
            eulerRotation.x: 0
            eulerRotation.z: -90
            source: "meshes/line001.mesh"
            materials: powerCable_material
            eulerRotation.y: -90
        }

        Model {
            id: cable005
            x: -6.45353
            y: -133.43
            z: 0.626755
            source: "meshes/cable005.mesh"

            DefaultMaterial {
                id: powerCable_material
                specularAmount: 0.1
                emissiveFactor: 0
                diffuseColor: "#b1f8fc"
            }
            materials: [
                powerCable_material
            ]
        }

        Model {
            id: cable006
            x: -11.6086
            y: -134.272
            z: 0.626755
            source: "meshes/cable006.mesh"
            materials: [
                powerCable_material
            ]
        }

        Model {
            id: eCU
            x: 0.000259161
            y: -114.679
            z: -10.3093
            eulerRotation.x: -5
            scale.x: 1.03955
            scale.y: 1.41603
            scale.z: 1.64852
            source: "meshes/eCU.mesh"

            DefaultMaterial {
                id: eCU_material
                specularAmount: 0.2
                diffuseColor: "#ffd0d0c2"
            }
            materials: [
                eCU_material
            ]
        }
    }
}
