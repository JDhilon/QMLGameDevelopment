import QtQuick
import QtQuick.Particles

Item {
    id: root
    anchors.fill: parent
    property alias particle: itemParticle.delegate
    MouseArea {
        anchors.fill: parent
        onClicked: {
            pulseEmitter.x = mouseX
            pulseEmitter.y = mouseY
            pulseEmitter.pulse(500)
        }
    }
    ParticleSystem {
        id: particles
        anchors.fill: parent
        ItemParticle {
            id: itemParticle
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
