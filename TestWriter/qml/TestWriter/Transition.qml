// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Image {
    id: transition
    width: 59
    height: 51
    source: "Resources/transition.png"

    states: State {
         name: "rotated"
         PropertyChanges { target: transition; rotation: 90; transformOrigin: Item.BottomRight }

    }

     transitions: Transition {

         SequentialAnimation {
             PropertyAction { target: transition; property: "transformOrigin" }
             RotationAnimation { duration: 250; direction: RotationAnimation.Clockwise }
         }
     }

    MouseArea {
        id: mouse_areaTransition

        drag.target: parent
        drag.axis: Drag.XandYAxis

        anchors.fill: parent

        onClicked: parent.state = "rotated"
    }

}
