// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Image {
    id: finalState
    width: 64
    height: 64
    source: "Resources/finalState.png"

    MouseArea {
        id: mouse_areaFinalState

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

                var imgComp = Qt.createComponent("PropertyFinalState.qml");

                if( imgComp.status == Component.Ready )
                    var img = imgComp.createObject( rightPanelObjects , {"anchors.fill" : rightPanelObjects } );
                else
                    console.log( Component.errorString );
            }
        }

    }
}
