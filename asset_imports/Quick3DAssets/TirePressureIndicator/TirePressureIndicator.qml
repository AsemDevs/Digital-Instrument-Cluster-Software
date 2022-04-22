import QtQuick 2.15
import QtQuick3D 1.15
import Quick3DAssets.Coupe 1.0
import Quick3DAssets.TirePressurePole 1.0
import DigitalCluster 1.0
import Quick3DAssets.TirePressureLabel 1.0




Node {
    id: rootNode
    property real labelAngle: 0

    Model {
        id: pressure_FL
        x: 70
        y: 36.987
        z: 135.912
        eulerRotation.y: 90
        eulerRotation.z: -2.50448e-06
        source: "meshes/pressure_FL.mesh"

        DefaultMaterial {
            id: material__1359_material
            lighting: DefaultMaterial.FragmentLighting
            blendMode: DefaultMaterial.Screen
            specularAmount: 1
            emissiveColor: "#dd61e7"
            emissiveFactor: 1
            specularTint: "#ffffff"
            diffuseMap: tirePressure
            diffuseColor: "#ed85f5"

            Texture {
                id: tirePressure
                source: "maps/TirePressure.png"
                positionV: 0.05
            }
        }
        materials: [
            material__1359_material
        ]
    }

    Model {
        id: pressure_BL
        x: 74
        y: 36.9874
        z: -142.619
        eulerRotation.y: 90
        eulerRotation.z: -2.50448e-06
        source: "meshes/pressure_BL.mesh"
        materials: [
            material__1359_material
        ]
    }

    Model {
        id: pressure_BR
        x: -74
        y: 36.9874
        z: -142.619
        eulerRotation.y: -90
        eulerRotation.z: 2.50448e-06
        source: "meshes/pressure_BR.mesh"
        materials: [
            material__1359_material
        ]
    }

    Model {
        id: pressure_FR
        x: -70
        y: 36.9874
        z: 135.912
        eulerRotation.y: -90
        eulerRotation.z: 2.50448e-06
        source: "meshes/pressure_FR.mesh"

        materials: [
            material__1359_material

        ]
    }


    TirePressurePole {
        id: tirePressurePole
        x: -20.605
        y: 0
        z: 29.39237
    }

    TirePressurePole {
        id: tirePressurePole1
        x: -16.276
        y: -0
        eulerRotation.z: -0
        eulerRotation.y: 0
        eulerRotation.x: 0.00002
        z: -245.4986
    }

    TirePressurePole {
        id: tirePressurePole2
        x: 15.382
        y: 0
        eulerRotation.y: 180
        z: -33.66628
        eulerRotation.x: 0.00002
        eulerRotation.z: 0
    }

    TirePressurePole {
        id: tirePressurePole3
        x: 19.332
        y: 0
        eulerRotation.y: 180
        z: 244.73473
        eulerRotation.x: 0.00002
        eulerRotation.z: 0
    }

    TirePressureLabel {
        id: tirePressureLabel_FR
        x: 121.37
        y: 104.36
        eulerRotation.y: rootNode.labelAngle
        z: 135.66
    }

    TirePressureLabel {
        id: tirePressureLabel1_BR
        x: 125.73
        y: 104.36
        eulerRotation.y: rootNode.labelAngle
        z: -139.2
    }

    TirePressureLabel {
        id: tirePressureLabel2_BL
        x: -126.57
        y: 104.36
        eulerRotation.y: rootNode.labelAngle
        z: -139.98
    }

    TirePressureLabel {
        id: tirePressureLabel3_FL
        x: -122.6
        y: 104.36
        eulerRotation.y: rootNode.labelAngle
        z: 138.41
    }





}
