// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "dropJS.js" as Drop

Rectangle {
    id: mainContainer
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
            onClicked: { hApplication.createFile("./text.scxml") }
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
            width: 64
            height: 64
            source: "Resources/initialState.png"

            property string name: "initialState"

            MouseArea {
                id: mouse_areaInitalState

                anchors.fill: parent

                onDoubleClicked: {

                    Drop.drop("InitialState.qml" , dropPanel );
                }

            }
        }


        Image {
            id: finalState
            x: 23
            y: 96
            width: 64
            height: 64
            source: "Resources/finalState.png"

            property string name: "finalState"

            MouseArea {
                id: mouse_areaFinalState

                anchors.fill: parent

                onDoubleClicked: {

                    Drop.drop("FinalState.qml" , dropPanel );
                }

            }
        }

        Image {
            id: state
            x: 23
            y: 181
            width: 64
            height: 64
            source: "Resources/state.png"

            property string name: "state"

            MouseArea {
                id: mouse_areaState

                anchors.fill: parent

                onDoubleClicked: {

                    Drop.drop("State.qml" , dropPanel );

            }
        }
     }

    Image {
        id: transition
        x: 23
        y: 274
        width: 64
        height: 64
        source: "Resources/transition.png"

        property string name: "transition"

        MouseArea {
            id: mouse_areaTransition

            anchors.fill: parent

            onDoubleClicked: {

                Drop.drop("Transition.qml" , dropPanel );
            }

        }
    }

    }

    Rectangle {
        id: rightPanelObjects
        x: 902
        y: 192
        width: 122
        height: 528
        color: "#4d4c4c"
    }

    Rectangle {
        id: centerPanel
        x: 122
        y: 52
        width: 780
        height: 668
        color: "#959393"

        TextEditCustom {
            id: dropPanelEdit
            x: 69
            y: 34
            width: 642
            height: 590
        }

    }

    Rectangle {
        id: dropPanel
        x: 902
        y: 52
        width: 122
        height: 140
        color: "#626060"
    }
}

