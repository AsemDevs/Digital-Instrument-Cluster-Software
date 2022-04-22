import QtQuick 2.15
import QtQuick3D 1.15
import QtQuick.Timeline 1.0
import Quick3DAssets.CarShadowPlane 1.0
import DigitalCluster 1.0
import QtQuick3D.Materials 1.14
import Quick3DAssets.InteriorLights 1.0
import Quick3DAssets.DoorLights_R 1.0
import Quick3DAssets.DoorLights_L 1.0



Node {
    id: rootNode
    property bool driverdoor: false
    property bool passengerdoor: false
    property bool trunk: false
    property bool frontLights: true
    property bool highBeamOn: true
    property int driverDoorAngle: -50
    property int passengerDoorAngle: 50
    property int trunkAngle: 45

    property int animationDuration: 1000
    property int lightChangeDuration: 100

    property real carPaintRoughness: 0.26
    property color carPaintColor: "#7c7c7c"

    property real metalness: 0
    property real specular: 0
    property real ior: 0
    property real specularTint: 0
    

    property color windowColor: "#333333"
    property real windowRoughness: 0.2
    property real windowMetalness: 0
    property real windowOpacity: 0.3
    property real interiorOpacity: 1
    property real carShadowAmount: 1
    property real carBodyOpacity: 1
    property bool interiorLightsVisible: true
    property color interiorLightColor: "#26c7ff"
    property real interiorLightPower: 1
    eulerRotation.y: r_door_main_panel.eulerRotation.y

    Model {
        id: left_seat_base
        x: -0.0054996
        y: 0.0307345
        opacity: rootNode.interiorOpacity
        z: -4.47892
        eulerRotation.x: 6.83019e-06
        scale.x: 187.075
        scale.y: 187.075
        scale.z: 187.075
        source: "meshes/left_seat_base.mesh"

        DefaultMaterial {
            id: blackglossy_material
            diffuseColor: "#f13434"
        }

        PrincipledMaterial {
            id: grey_leather_dot_material
            roughness: 0.3
            baseColor: "#5e5e5e"
            baseColorMap: _0
            metalness: 0

            Texture {
                id: _0
                source: "maps/0.png"
                tilingModeVertical: Texture.Repeat
                tilingModeHorizontal: Texture.Repeat
            }

        }

        PrincipledMaterial {
            id: leatherColor_material
            roughness: 0.5
            baseColor: "#65655e"
            metalness: 0.5

        }

        PrincipledMaterial {
            id: blackPlastic_material  
            roughness: 0.3
            baseColor: "#555555"
            metalness: 0.5
        }

        PrincipledMaterial {
            id: leatherBlack_material
            roughness: 0.5
            baseColor: "#515151"
            metalness: 0.5
        }

        DefaultMaterial {
            id: blackPlastic2_material
            diffuseColor: "#737373"
        }

        DefaultMaterial {
            id: belt_fabric_material
            diffuseColor: "#ff4b4b4b"
        }

        DefaultMaterial {
            id: mid_buttons_silver_material
            diffuseMap: Texture {
                source: "maps/d_buttons.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
        }

        DefaultMaterial {
            id: mid_buttons_black_material
            diffuseMap: Texture {
                source: "maps/d_buttons.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
        }

        DefaultMaterial {
            id: aluInterior_material
            diffuseColor: "#ffb2b2b2"
        }

        DefaultMaterial {
            id: blackPlastic4_material
            diffuseColor: "#262626"
        }

        PrincipledMaterial {
            id: greyPlastic_material
            roughness: 0.4
            baseColor: "#b5b5b5"
            metalness: 0.6
            //specularAmount: 0.3
            // diffuseColor: "#a6a6a6"
        }

        DefaultMaterial {
            id: screen_material
            specularRoughness: 1
            //            emissiveFactor: 0.2

            diffuseMap: Texture {
                source: "maps/d_screen.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
        }

        DefaultMaterial {
            id: dark_leather_dot_material
            diffuseColor: "#626262"
            bumpMap: Texture {
                source: "maps/b_dotted.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }        }

        DefaultMaterial {
            id: tachometer_material
            emissiveFactor: 0.7
            diffuseMap: Texture {
                source: "maps/d_buttons.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
        }
        materials: [blackGlossy,grey_leather_dot_material,leatherColor_material,blackPlastic,leatherBlack_material,blackPlastic,brakeCaliper,mid_buttons_silver_material,mid_buttons_black_material,shiny,blackPlastic,greyPlastic_material,screen_material,dark_leather_dot_material,tachometer_material]
    }

    Model {
        id: center_seperator_wall_upper
        x: 0
        y: 57.0883
        opacity: rootNode.interiorOpacity
        z: 27.945
        eulerRotation.x: 6.83019e-06
        scale.x: 187.075
        scale.y: 187.075
        scale.z: 187.075
        source: "meshes/center_seperator_wall_upper.mesh"
        materials: [leatherBlack_material,shiny,blackShiny,chrome,chrome,blackPlastic]
    }

    Model {
        id: rear_body_panel
        y: -5.68434e-14
        z: -4.40334
        eulerRotation.x: 6.83019e-06
        scale.x: 187.075
        scale.y: 187.075
        scale.z: 187.075
        source: "meshes/rear_body_panel.mesh"
        materials: body
    }

    Model {
        id: body_underpanel
        y: -5.68434e-14
        opacity: rootNode.carBodyOpacity
        z: -4.40334
        eulerRotation.x: 6.83019e-06
        scale.x: 187.075
        scale.y: 187.075
        scale.z: 187.075
        source: "meshes/body_underpanel.mesh"

        DefaultMaterial {
            id: blocker_material
            diffuseColor: "#ff000000"
        }
        materials: [
            blocker_material
        ]
    }

    Model {
        id: carbonFiberParts
        x: 0
        y: 0
        opacity: rootNode.carBodyOpacity
        z: -4.4
        eulerRotation.x: 6.83019e-06
        scale.x: 187.075
        scale.y: 187.075
        scale.z: 187.075
        source: "meshes/carbonFiberParts.mesh"
        materials: [carbonFiber,blackPlastic,chrome,blackPlastic,window,leatherBlack_material,aluInterior_material,shiny,blackPlastic2_material]
    }

    Model {
        id: lights
        y: -5.68434e-14
        opacity: rootNode.carBodyOpacity
        z: -4.40334
        eulerRotation.x: 6.83019e-06
        scale.x: 187.075
        scale.y: 187.075
        scale.z: 187.075
        source: "meshes/lights.mesh"

        DefaultMaterial {
            id: tailight_yellow_glass_material
            diffuseColor: "#fff709"
            opacity: 0.19
            emissiveColor: "#5ce006"
        }

        DefaultMaterial {
            id: chromeRearLight_material
            diffuseColor: "#ff000000"
        }

        DefaultMaterial {
            id: tailight_red_material
            diffuseColor: "#c20202"
            opacity: 0.31
            emissiveFactor: 1
            emissiveColor: "#ea0000"
        }

        DefaultMaterial {
            id: rearlight_LED_material
            diffuseColor: "#b80707"
        }

        DefaultMaterial {
            id: tailight_yellow_material
            diffuseColor: "#ffcc470e"
        }
        materials: [front_light_mirror,high_beam_around,headlight_around_leds,window,headlight_Emissive,blackPlastic,highbeam_Emissive,blackShiny,window,chrome,taillight_Emissive,chrome,blackPlastic]
    }

    InteriorLights {
        id: interiorLights
        x: 0
        y: -0
        visible: rootNode.interiorLightsVisible
        z: -0.80793
        interiorLightEmissiveFactor: interiorLightPower
        interiorLightDiffuseColor: interiorLightColor
    }

    DoorLights_L {
        id: doorLights_L
        x: 85.08
        y: 61.81
        visible: rootNode.interiorLightsVisible
        doorLight_L_EmissiveColor: interiorLightColor
        doorLight_L_DiffuseColor: interiorLightColor
        doorLight_L_EmissiveFactor: interiorLightPower
        eulerRotation.y: l_door_main_panel.eulerRotation.y
        pivot.z: 65
        pivot.y: 61.5
        z: 64.82
        pivot.x: 85.1
    }

    DoorLights_R {
        id: doorLights_R
        x: -85.3
        y: 73.42
        visible: rootNode.interiorLightsVisible
        doorLight_R_DiffuseColor: interiorLightColor
        doorLight_R_EmissiveColor: interiorLightColor
        doorLight_R_EmissiveFactor: interiorLightPower
        eulerRotation.y: r_door_main_panel.eulerRotation.y
        pivot.z: 69
        pivot.y: 86
        pivot.x: -89.4
        eulerRotation.z: 0
        eulerRotation.x: 0
        z: 64.88
    }

    Model {
        id: l_door_main_panel
        x: 85.0836
        y: 61.8075
        opacity: rootNode.interiorOpacity
        z: 64.8209
        eulerRotation.x: -0.00001
        eulerRotation.y: rootNode.driverdoor ? rootNode.driverDoorAngle : 0
        eulerRotation.z: 0.00004
        scale.x: 187.075
        scale.y: 187.075
        scale.z: 187.075
        source: "meshes/l_door_main_panel.mesh"

        Behavior on eulerRotation.y {
            NumberAnimation { duration: rootNode.animationDuration }
        }

        DefaultMaterial {
            id: speaker_material
            diffuseColor: "#ff181818"
            bumpMap: Texture {
                source: "maps/b_dotted.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }        }
        materials: [body,blackPlastic_material,leatherBlack_material,greyPlastic_material,speaker_material,mid_buttons_black_material,chrome,window,chrome]
    }

    Model {
        id: r_door_main_panel
        x: -85.2962
        y: 73.4192
        opacity: rootNode.interiorOpacity
        z: 64.8832
        eulerRotation.x: -90
        source: "meshes/r_door_main_panel.mesh"
        eulerRotation.z: 0
        eulerRotation.y: rootNode.passengerdoor ? rootNode.passengerDoorAngle : 0
        materials: [body,chrome,blackPlastic_material,leatherBlack_material,speaker_material,greyPlastic_material,mid_buttons_black_material,chrome,window]
        Behavior on eulerRotation.y {
            NumberAnimation { duration: rootNode.animationDuration }
        }
    }

    Model {
        id: rear_boot_door
        x: -0.00149975
        y: 116.605
        opacity: rootNode.carBodyOpacity
        z: -120.353
        eulerRotation.x: rootNode.trunk ? rootNode.trunkAngle : 0
        scale.x: 187.075
        scale.y: 187.075
        scale.z: 187.075
        source: "meshes/rear_boot_door.mesh"
        eulerRotation.z: 0.00001
        eulerRotation.y: 0

        Behavior on eulerRotation.x {
            NumberAnimation { duration: rootNode.animationDuration }
        }

        DefaultMaterial {
            id: redGlass_material
            diffuseColor: "#ffff0000"
            opacity: 0.31
        }

        DefaultMaterial {
            id: glass_red_material
            diffuseColor: "#ffff0000"
            opacity: 0.13
        }
        materials: [body,blackPlastic,window,blackPlastic,redGlass_material,glass_red_material,chrome]
    }

    Node {
        id: tire_FR
        x: -74.4259
        y: 36.9875
        opacity: rootNode.carBodyOpacity
        z: 135.743
        eulerRotation.x: -90

        Model {
            id: fR_caliper_body
            x: -3.59775
            y: 16.4089
            z: -0.198357
            source: "meshes/fR_caliper_body.mesh"
            materials: brakeCaliper
        }

        Model {
            id: p_FR_Tire
            source: "meshes/p_FR_Tire.mesh"

            DefaultMaterial {
                id: tire_material
                diffuseColor: "#ff232323"
            }

            DefaultMaterial {
                id: rimAlu_material
                diffuseColor: "#ffa4a4a4"
            }

            DefaultMaterial {
                id: brakeSteelDark2_material
                diffuseColor: "#dbdbdb"
                bumpMap: Texture {
                    source: "maps/brakes_02.png"
                    tilingModeHorizontal: Texture.Repeat
                    tilingModeVertical: Texture.Repeat
                }

            }

            DefaultMaterial {
                id: rimBlackGlossy_material
                diffuseColor: "#ffffffff"
            }
            materials: [tire_material,shiny,chrome,blackShiny]
        }
    }

    Node {
        id: tire_BR
        x: -77.0328
        y: 36.9875
        opacity: rootNode.carBodyOpacity
        z: -142.622
        eulerRotation.x: -90

        Model {
            id: p_RR_Tire
            source: "meshes/p_RR_Tire.mesh"
            materials: [tire_material,shiny,blackShiny,chrome]
        }

        Model {
            id: rR_caliper_body
            x: -3.59938
            y: 13.2063
            z: -0.197159
            source: "meshes/rR_caliper_body.mesh"
            materials: brakeCaliper
        }
    }

    Node {
        id: tire_FL
        x: 74.4115
        y: 36.9874
        opacity: rootNode.carBodyOpacity
        z: 135.743
        eulerRotation.x: -90

        Model {
            id: p_FL_Tire
            source: "meshes/p_FL_Tire.mesh"
            materials: [tire_material,blackShiny,chrome,shiny]
        }

        Model {
            id: fL_caliper_body
            x: 3.65276
            y: 16.409
            z: 0.130096
            source: "meshes/fL_caliper_body.mesh"
            materials: brakeCaliper
        }
    }

    Node {
        id: tire_BL
        x: 77.2063
        y: 36.9874
        opacity: rootNode.carBodyOpacity
        z: -142.619
        eulerRotation.x: -90

        Model {
            id: p_RL_Tire
            source: "meshes/p_RL_Tire.mesh"
            materials: [tire_material,shiny,blackShiny,chrome]
        }

        Model {
            id: rL_caliper_body
            x: 3.59795
            y: 16.5773
            z: 0.131187
            source: "meshes/rL_caliper_body.mesh"
            materials: brakeCaliper
        }
    }

    PrincipledMaterial {
        id: body
        roughness: rootNode.carPaintRoughness
        baseColor: rootNode.carPaintColor
        metalness: rootNode.metalness
        specularAmount: rootNode.specular
        indexOfRefraction: rootNode.ior
        specularTint: rootNode.specularTint
        opacity: rootNode.carBodyOpacity
    }

    //    CopperMaterial {
    //        id: body
    //        roughness: 0.25
    ////        uEnvironmentMappingEnabled: true
    //    }

    PrincipledMaterial {
        id: headlight_Emissive
        emissiveColor: rootNode.frontLights ? "#ffffff" : "#000000"

        roughness: 0.73498
        baseColor: "#ffffff"
        metalness: 0
        Behavior on emissiveColor {
            ColorAnimation { duration: rootNode.lightChangeDuration }
        }
    }

    PrincipledMaterial {
        id: headlight_around_leds
        emissiveColor: rootNode.frontLights ? "#ffffff" : "#000000"

        baseColor: "#8e8e8e"
        roughness: 0.3
        metalness: 0.8
        Behavior on emissiveColor {
            ColorAnimation { duration: rootNode.lightChangeDuration }
        }
    }

    PrincipledMaterial {
        id: front_light_mirror
        emissiveColor: rootNode.frontLights ? "#ffffff" : "#000000"

        baseColor: "#8e8e8e"
        roughness: 0.3
        metalness: 0.8
        Behavior on emissiveColor {
            ColorAnimation { duration: rootNode.lightChangeDuration }
        }
    }

    PrincipledMaterial {
        id: high_beam_around
        emissiveColor: rootNode.highBeamOn ? "#ffffff" : "#000000"

        baseColor: "#bfbbbb"
        roughness: 0.3
        metalness: 0.8
        Behavior on emissiveColor {
            ColorAnimation { duration: rootNode.lightChangeDuration }
        }
    }

    PrincipledMaterial {
        id: highbeam_Emissive
        emissiveColor: rootNode.highBeamOn ? "#ffffff" : "#000000"

        roughness: 0.73498
        baseColor: "#aeabab"
        metalness: 0
        Behavior on emissiveColor {
            ColorAnimation { duration: rootNode.lightChangeDuration }
        }
    }






    PrincipledMaterial {
        id: taillight_Emissive
        roughness: 0.73498
        emissiveColor: "#cd0303"
        metalness: 0
        baseColor: "#e15e5e"
    }

    PrincipledMaterial {
        id: chrome
        roughness: 0
        baseColor: "#a4a3a3"
        metalness: 0.9
        opacity: rootNode.carBodyOpacity
    }

    PrincipledMaterial {
        id: shiny
        baseColor: "#8e8e8e"
        roughness: 0.3
        metalness: 0.8
    }

    PrincipledMaterial {
        id: carbonFiber
        metalnessMap: carbonfiberTxture
        baseColorMap: carbonfiberTxture
        roughness: 0.3
        baseColor: "#ffffff"
        metalness: 1

        Texture {
            id: carbonfiberTxture
            source: "maps/d_carbon_f.png"
            scaleV: 5
            scaleU: 5
            tilingModeVertical: Texture.Repeat
            tilingModeHorizontal: Texture.Repeat
        }
    }

    PrincipledMaterial {
        id: blackPlastic
        baseColor: "#282828"
        metalness: 0.4
        roughness: 0.3
    }

    PrincipledMaterial {
        id: blackShiny
        baseColor: "#666666"
        roughness: 0.1
        metalness: 1
    }

    PrincipledMaterial {
        id: blackGlossy
        baseColor: "#282828"
        metalness: 0
    }

    PrincipledMaterial {
        id: window
        opacity: windowOpacity
        occlusionAmount: 1
        baseColor: windowColor
        roughness: windowRoughness
        metalness: windowMetalness
    }

    CarShadowPlane {
        id: carShadowPlane
        x: 29.325
        y: 1.534
        opacity: rootNode.carShadowAmount
        scale.z: 0.92946
        scale.y: 1
        scale.x: 1.40148
        z: -17.0157
    }

    PrincipledMaterial {
        id: brakeCaliper
        baseColor: "#5e0000"
        roughness: 0.4
        metalness: 0.5
    }





    transitions: [
        Transition {
            id: transition
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: r_door_main_panel
                        property: "eulerRotation.x"
                        easing.bezierCurve: [0.77,0,0.175,1,1,1]
                        duration: 601
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: r_door_main_panel
                        property: "eulerRotation.y"
                        easing.bezierCurve: [0.86,0,0.07,1,1,1]
                        duration: 601
                    }
                }
            }

            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: l_door_main_panel
                        property: "eulerRotation.z"
                        easing.bezierCurve: [0.77,0,0.175,1,1,1]
                        duration: 601
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: l_door_main_panel
                        property: "eulerRotation.x"
                        easing.bezierCurve: [0.77,0,0.175,1,1,1]
                        duration: 601
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: l_door_main_panel
                        property: "eulerRotation.y"
                        easing.bezierCurve: [0.77,0,0.175,1,1,1]
                        duration: 601
                    }
                }
            }

            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: rear_boot_door
                        property: "eulerRotation.z"
                        easing.bezierCurve: [0.77,0,0.175,1,1,1]
                        duration: 601
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: rear_boot_door
                        property: "eulerRotation.x"
                        easing.bezierCurve: [0.77,0,0.175,1,1,1]
                        duration: 601
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: rear_boot_door
                        property: "eulerRotation.y"
                        easing.bezierCurve: [0.77,0,0.175,1,1,1]
                        duration: 601
                    }
                }
            }
            to: "*"
            from: "*"
        }
    ]


}


