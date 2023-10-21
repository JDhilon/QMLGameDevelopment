import QtQuick
import QtQuick.Particles

Item {
    id: root
    property alias xPos: pulseEmitter.x
    property alias yPos: pulseEmitter.y
    Timer {
        interval: 3500
        triggeredOnStart: true
        running: true
        repeat: true
        onTriggered: {
            pulseEmitter.pulse(500);
        }
    }
    ParticleSystem {
        id: particles
        anchors.fill: parent
        ItemParticle {
            delegate: Rectangle {
                color: "red"
                height: 5
                width: 5
            }
        }
        Emitter {
            id: pulseEmitter
            emitRate: 1000
            lifeSpan: 2000
            enabled: false
            velocity: AngleDirection{magnitude: 64; angleVariation: 360}
            size: 24
            sizeVariation: 8
        }
    }
}
