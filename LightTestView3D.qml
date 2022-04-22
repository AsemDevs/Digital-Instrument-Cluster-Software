import QtQuick 2.12
import QtQuick3D 1.15
import QtQuick 2.15
import QtQuick.Timeline 1.0
import QtQuick3D.Effects 1.15
import QtQuick3D.Materials 1.14
import QtQuick3D.Materials 1.15
import QtQuick.Studio.Effects 1.0

View3D {
    id: view3D
    anchors.fill: parent


    property bool renderedScene: true  // true = scene, false = lights

    property string matLighting: renderedScene ? PrincipledMaterial.FragmentLighting : PrincipledMaterial.NoLighting
    property int lightBrightness: renderedScene ? 100 : 0
    property int envBrightness: renderedScene ? 150 : 0

    environment: sceneEnvironment
    SceneEnvironment {
        id: sceneEnvironment
        effects: hDRBloomTonemap
        backgroundMode: renderedScene ? SceneEnvironment.SkyBox : SceneEnvironment.Transparent
        antialiasingQuality: SceneEnvironment.High
        antialiasingMode: SceneEnvironment.MSAA

        // Studio_05e.hdr 120
        clearColor: "#000000"

        probeBrightness: envBrightness

        lightProbe: Texture {
            //source: "assets/hdr/hdr3a.hdr"
            source: "cluster/assets/hdr/nature01.hdr"
            //                source: "assets/hdr/nature01.hdr"
        }
    }

    Node {
        id: scene
        //        PointLight {
        //            id: lightPoint
        //            x: -0
        //            y: -24.782
        //            brightness: 7695
        //            z: 82.13842

        //            HDRBloomTonemap {
        //                id: hDRBloomTonemap
        //                tonemappingLerp: 0
        //                channelThreshold: 0.8
        //                bloomThreshold: 1
        //                gamma: 2.2
        //                blurFalloff: 10
        //                exposure: 3


        //            }
        //        }

        PerspectiveCamera {
            id: camera
            eulerRotation.y: 330
            pivot.z: -242
            z: 0
        }

        // test cube

        Model {
            id: cube
            x: -94.53
            y: 0
            source: "#Cube"
            z: 0

            materials: buffer
        }

        Model {
            id: cubeModel
            source: "#Cube"
            eulerRotation.x: 0
            eulerRotation.y: 0
            PrincipledMaterial {
                id: principledMaterial
                lighting: PrincipledMaterial.FragmentLighting
                roughness: 0.3
                baseColor: "#ff334455"
                metalness: 1
            }

            Model {
                id: cylinder
                y: 0
                source: "#Cylinder"
                scale.x: 0.3
                scale.z: 0.3
                scale.y: 1.04
                eulerRotation.x: 88.9

                DefaultMaterial {
                    id: lightEmission
                    lighting: DefaultMaterial.NoLighting
                    diffuseColor: "#ffffff"
                }

                PrincipledMaterial {
                    id: lightsTurnedOff
                    lighting: PrincipledMaterial.FragmentLighting
                    roughness: 0.05
                    baseColor: "#efe8c7"
                    metalness: 1

                }

                CustomMaterial {

                    id: customMaterial
                    passes: [renderPass,renderPass2]
                    shaderInfo: shaderInformation
                    ShaderInfo {
                        id: shaderInformation
                        version: "330"
                        type: "GLSL"
                    }

                    Pass {
                        id: renderPass
                        output: buffer
                        shaders: [vertShader, fragShader]
                    }

                    Pass {
                        id: renderPass2
                        shaders: [ fragShader2 ]
                        commands: [
                            // We feed the output of the first pass as an input for the second pass.
                            BufferInput {
                                buffer: buffer
                            }
                        ]


                    }



                    Shader {
                        id: vertShader
                        stage: Shader.Vertex
                        shader: "/* Set to a vertex shader file */"
                    }

                    Shader {
                        id: fragShader
                        stage: Shader.Fragment
                        shader: "
                            in highp vec2 qt_TexCoord0;
                            out vec4 Color;


                            void main() {

                                Color = vec4(1.0, 1.0, 1.0, 1.0);
                            }"
                    }

                    Shader {
                        id: fragShader2
                        stage: Shader.Fragment
                        shader: "
                            in highp vec2 qt_TexCoord0;
                            out vec4 Color;


                            void main() {

                                Color = vec4(1.0, 0.0, 0.0, 1.0);
                            }"
                    }
                }

                Buffer {
                    id: buffer
                }



                materials: renderedScene ? lightEmission : lightEmission
            }

            Model {
                id: cylinder1
                y: 0
                source: "#Cylinder"
                scale.x: 0.2
                eulerRotation.x: 88.9
                scale.z: 0.2
                scale.y: 1.13

                PrincipledMaterial {
                    id: principledMaterial1
                    roughness: 0.05
                    baseColor: "#ff112233"
                    metalness: 1
                }

                materials: [principledMaterial1]
            }


            materials: [principledMaterial]
        }

        DirectionalLight {
            id: directionalLight
            x: -0
            y: 0
            z: 160.96004
            brightness: lightBrightness
        }

        HDRBloomTonemap {
            id: hDRBloomTonemap
        }

        //        GaussianBlur {
        //            id: gaussianBlur
        //            amount: 10
        //        }


    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                pingPong: true
                loops: -1
                running: true
                duration: 5000
                to: 100
                from: 0
            }
        ]
        endFrame: 100
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: camera
            property: "eulerRotation.y"
            Keyframe {
                easing.bezierCurve: [0.645,0.045,0.355,1,1,1]
                value: -50
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.645,0.045,0.355,1,1,1]
                value: 330
                frame: 100
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:1080;width:1920}D{i:27;property:"eulerRotation.y";target:"camera"}
D{i:24}
}
##^##*/
