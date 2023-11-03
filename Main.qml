import QtQuick
import QtQuick.Window
import QtQuick.Particles
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    GameScene {
        id: scene
        anchors.fill: parent

        Actor {
            id: character
            name: "1"
        }

        Actor {
            id: character2
            name: "2"
            onTicked: function() {
                console.log("Custom tick handling")
            }
        }

        Actor {
            id: character3
            name: "3"
            tick: function() {
                console.log("Custom tick handling the second way")
            }
        }
    }

//    Rectangle {
//        x: 0
//        y: 0
//        width: parent.width/4
//        height: parent.height/4
//        color: "#ffa6c6"
//        PulseEmitter {
//            id: pulseEmitter
//            particle: Rectangle {
//                color: "red"
//                height: 5
//                width: 5
//            }
//        }
//    }
}
