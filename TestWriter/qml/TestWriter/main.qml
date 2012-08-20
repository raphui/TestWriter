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

        Flickable {
            id: leftPanelDrag
            x: 0
            y: 0
            width: 122
            height: 668

            Image {
                id: initalState
                x: 26
                y: 21
                width: 59
                height: 51
                source: "Resources/initialState.png"

                MouseArea {
                    id: mouse_areaInitalState
                    x: 0
                    y: 0
                    width: 59
                    height: 51

                    onDoubleClicked: { stateModel.append( { "sourceImage":"Resources/initialState.png" } ) }
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
                    x: 0
                    y: 0
                    width: 66
                    height: 57

                    onDoubleClicked: { stateModel.append( { "sourceImage":"Resources/finalState.png" } ) }
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
                    x: 0
                    y: 0
                    width: 66
                    height: 57

                    onDoubleClicked: { stateModel.append( { "sourceImage":"Resources/state.png" } ) }
                }
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

        GridView {
            id: centerGridView

            property int firstIndexDrag: -1

            x: 0
            y: 0
            width: 780
            height: 668
            cellHeight: 70
            cellWidth: 70

            anchors.fill: parent

            delegate:
                Item {
                    x: 5
                    height: 50
                    Column {
                        spacing: 5
                        Rectangle {
                            width: 66
                            height: 57
                            anchors.horizontalCenter: parent.horizontalCenter


                            Image {

                                source: sourceImage
                                anchors.fill: parent
                            }
                        }

                    }
                }

            MouseArea {
                anchors.fill: parent

                onReleased: {
                        if( centerGridView.firstIndexDrag !== -1 )
                            stateModel.move( centerGridView.firstIndexDrag , centerGridView.indexAt( mouseX , mouseY )
                                            , 1 )

                        centerGridView.firstIndexDrag = -1
                }

                onPressed: centerGridView.firstIndexDrag=centerGridView.indexAt( mouseX , mouseY )
            }

            model: ListModel {

                id: stateModel

                onItemsInserted: { }
            }
        }
    }
}
