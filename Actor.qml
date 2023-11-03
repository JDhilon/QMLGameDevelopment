import QtQuick

Item {
    id: root
    signal ticked()
    property var tick
    property string name: "Actor"

     /* TODO: Add other actor based properties
        - AABB properties
        - Visual component
        - Maybe automatically calculate AABB
        - Decide on the signal method or tick method for event handling
    */
    function onTick() {
        console.log("tick on " + root.name)
        ticked()
        if (tick && typeof tick === "function") {
            tick()
        }
    }
}
