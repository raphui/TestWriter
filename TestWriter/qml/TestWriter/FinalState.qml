// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Image {
    id: finalState
    width: 66
    height: 57
    source: "Resources/finalState.png"

    MouseArea {
        id: mouse_areaFinalState

        drag.target: parent
        drag.axis: Drag.XandYAxis

        anchors.fill: parent

    }
}
