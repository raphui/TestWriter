// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: container
    width: 99
    height: 27

    property string text: "Button"

    signal clicked

    border { width: 1; color: Qt.darker(activePalette.button) }
    smooth: true
    radius: 8

    gradient: Gradient{
        GradientStop{

            position: 0.0
            color: {

                if( mouseArea.pressed )
                    return activePalette.dark
                else
                    return activePalette.light
            }
        }

        GradientStop{ position: 1.0; color: activePalette.button }
    }

    MouseArea {
        id: mouseArea
        x: 0
        y: 0
        width: 99
        height: 27

        anchors.fill: parent

        onClicked: container.clicked();
    }

    Text {
        id: buttonLabel
        anchors.centerIn: container
        color: activePalette.buttonText
        text: container.text
    }
}
