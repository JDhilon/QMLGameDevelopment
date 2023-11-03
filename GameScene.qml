import QtQuick

//  TODO: Maybe make singleton?
Item {
    id: root
    property alias running: timer.running
    Timer {
        id: timer
        interval: 1000
        triggeredOnStart: true
        running: true
        repeat: true
        onTriggered: function() {
            // handle events
            // update
            // render
            for (var i = 0; i < children.length; i++) {
                var child = children[i];
                if(child instanceof Actor) {
                    child.onTick()
                }
            }
        }
    }
}
