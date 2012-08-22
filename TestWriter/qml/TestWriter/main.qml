// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    width: 1024
    height: 720
    visible: true

    SystemPalette{ id: activePalette }

    Rectangle {
        id: menu
        x: 0
        y: 0
        width: 1024
        height: 52
        color: "#c2bfbf"

        Button {
            x: 172
            y: 13

            text: "New File"
            onClicked: { hApplication.createFile("./text.txt") }
        }

        Button {
            x: 427
            y: 13

            text: "Save File"

        }

       Button {
            x: 731
            y: 13

            text: "Exit"
            onClicked: { Qt.quit() }
        }
    }

    Rectangle {
        id: leftPanelObjects
        x: 0
        y: 52
        width: 122
        height: 668
        color: "#4d4c4c"

        Image {
            id: initalState
            x: 26
            y: 21
            width: 59
            height: 51
            source: "Resources/initialState.png"

            MouseArea {
                id: mouse_areaInitalState

                anchors.fill: parent

                onReleased: {


                    var imgComp = Qt.createComponent("InitialState.qml");

                    if( imgComp.status == Component.Ready )
                        var img = imgComp.createObject( centerPanel , {"x" : mouseX , "y" : mouseY } );
                    else
                        console.log( Component.errorString );
                }

            }
        }

        Image {
            id: finalState
            x: 23
            y: 96
            width: 66
            height: 57
            source: "Resources/finalState.png"

            MouseArea {
                id: mouse_areaFinalState

                anchors.fill: parent

                onReleased: {

                    var imgComp = Qt.createComponent("FinalState.qml");

                    if( imgComp.status == Component.Ready )
                        var img = imgComp.createObject( centerPanel , {"x" : mouseX , "y" : mouseY } );
                    else
                        console.log( Component.errorString );
                }

            }
        }

        Image {
            id: state
            x: 23
            y: 181
            width: 66
            height: 57
            source: "Resources/state.png"

            MouseArea {
                id: mouse_areaState

                anchors.fill: parent

                onReleased: {

                    var imgComp = Qt.createComponent("State.qml");

                    if( imgComp.status == Component.Ready )
                        var img = imgComp.createObject( centerPanel , {"x" : mouseX , "y" : mouseY } );
                    else
                        console.log( Component.errorString );

            }
        }
    }

    Rectangle {
        id: rightPanelObjects
        x: 902
        y: 52
        width: 122
        height: 668
        color: "#4d4c4c"
    }

    Rectangle {
        id: centerPanel
        x: 122
        y: 52
        width: 780
        height: 668
        color: "#959393"

    }
}
