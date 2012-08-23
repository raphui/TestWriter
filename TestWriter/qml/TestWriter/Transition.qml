// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Image {
    id: transition
    width: 64
    height: 64
    source: "Resources/transition.png"
    rotation: 0

    property int rot: 0

    states: [ State {
         name: "rotated"

         PropertyChanges { target: transition; rot: ( rot + 90 ) }
         PropertyChanges { target: transition; rotation: transition.rot; transformOrigin: Item.BottomRight }


    }, State {
            name: "no-rotated"

            PropertyChanges { target: transition; rot: ( rot + 90 ) }
            PropertyChanges { target: transition; rotation: transition.rot; transformOrigin: Item.BottomRight }
     } ]

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

        acceptedButtons: Qt.LeftButton | Qt.RightButton

        onClicked: {

            if( mouse.button == Qt.RightButton )
            {

                if( rightPanelObjects.children.length > 0 )
                {
                    console.log("Deleting object children on the rightPanelObjets");
                    rightPanelObjects.children[0].destroy();

                }


                var imgComp = Qt.createComponent("PropertyTransition.qml");

                if( imgComp.status == Component.Ready )
                    var img = imgComp.createObject( rightPanelObjects , {"anchors.fill" : rightPanelObjects } );
                else
                    console.log( Component.errorString );
            }
            else
            {
                if( parent.state == "" )
                {
                    parent.state = "rotated"
                }
                else if( parent.state == "rotated" )
                {
                    parent.state = "no-rotated"

                }
                else if( parent.state == "no-rotated" )
                {
                    parent.state = "rotated"
                }
            }


        }

    }

}
