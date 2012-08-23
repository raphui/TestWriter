// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: container
    width: 120
    height: 500
    gradient: Gradient {
        GradientStop {
            position: 0.190
            color: "#c0baba"
        }

        GradientStop {
            position: 0.440
            color: "#a29999"
        }
    }
    border.color: "#aa9f9f"

    Text {
        id: nameText
        x: 0
        y: 0
        width: 40
        height: 17
        text: qsTr("To:")
        font.pixelSize: 14
    }

    MouseArea {
        id: propertyMouseArea

        drag.target: parent
        drag.axis: Drag.XandYAxis

        anchors.fill: parent



    }

    TextInput {
        id: nameTextInput
        x: 56
        y: 0
        width: 53
        height: 17
        text: qsTr("")
        font.pixelSize: 14
    }

    Text {
        id: logOnEntry
        x: 0
        y: 45
        width: 85
        height: 16
        text: qsTr("Event:")
        font.pixelSize: 14
    }
}
