import QtQuick
import QtQuick.Window
import QtQuick.Particles

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        x: 0
        y: 0
        width: parent.width/4
        height: parent.height/4
        color: "#ffa6c6"
        PulseEmitter {
            id: pulseEmitter
            particle: Rectangle {
                color: "red"
                height: 5
                width: 5
            }
        }
    }
}
