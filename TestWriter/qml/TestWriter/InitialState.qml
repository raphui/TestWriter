// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Image {
    id: initalState
    width: 59
    height: 51
    source: "Resources/initialState.png"

    MouseArea {
        id: mouse_areaInitalState

        drag.target: parent
        drag.axis: Drag.XandYAxis

        anchors.fill: parent

        }

    }
