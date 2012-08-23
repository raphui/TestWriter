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

    MouseArea {
        id: propertyMouseArea

        drag.target: parent
        drag.axis: Drag.XandYAxis

        anchors.fill: parent

        Text {
            id: logOnEntry1
            x: 0
            y: 85
            width: 85
            height: 16
            text: qsTr("Invokation:")
            font.pixelSize: 14
        }

        Text {
            id: logOnEntry
            x: 0
            y: 45
            width: 85
            height: 16
            text: qsTr("Log on entry:")
            font.pixelSize: 14
        }

        Text {
            id: nameText
            x: 0
            y: 0
            width: 40
            height: 17
            text: qsTr("Name:")
            font.pixelSize: 14
        }



    }

    TextInputCustom {
        id: nameTextInput
        x: 46
        y: 0
        width: 74
        height: 18
    }

    TextInputCustom {
        id: invokationTextInput
        x: 13
        y: 104
        width: 101
        height: 46
    }
}
