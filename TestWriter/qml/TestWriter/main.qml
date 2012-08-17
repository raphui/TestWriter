// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    width: 1024
    height: 720

    Rectangle {
        id: menu
        x: 0
        y: 0
        width: 1024
        height: 52
        color: "#c2bfbf"

        Rectangle {
            id: newFileButton
            x: 98
            y: 13
            width: 99
            height: 27
            color: "#b7b4b4"

            Text {
                id: newFileText
                x: 21
                y: 7
                width: 56
                height: 14
                text: qsTr("New File")
                font.pixelSize: 12
            }

            MouseArea {
                id: mouse_areaNewFileButton
                x: 0
                y: 0
                width: 99
                height: 27

                onClicked: { hApplication.createFile("C:\\test.txt") }
            }
        }

        Rectangle {
            id: saveFileButton
            x: 411
            y: 13
            width: 99
            height: 27
            color: "#b7b4b4"

            Text {
                id: saveFileText
                x: 21
                y: 7
                width: 56
                height: 14
                text: qsTr("Save File")
                font.pixelSize: 12
            }

            MouseArea {
                id: mouse_areaSaveFileButton
                x: 0
                y: 0
                width: 99
                height: 27
            }
        }

        Rectangle {
            id: exitButton
            x: 825
            y: 13
            width: 99
            height: 27
            color: "#b7b4b4"

            Text {
                id: exitText
                x: 35
                y: 7
                width: 26
                height: 14
                text: qsTr("Exit")
                font.pixelSize: 12
            }

            MouseArea {
                id: mouse_areaExitButton
                x: 0
                y: 0
                width: 99
                height: 27
                onClicked: { Qt.quit() }
            }
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
    }
}
