// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Image {
    id: state
    width: 66
    height: 57
    source: "Resources/state.png"

    MouseArea {
        id: mouse_areaState

        drag.target: parent
        drag.axis: Drag.XandYAxis

        anchors.fill: parent

    }
}
