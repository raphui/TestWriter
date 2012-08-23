// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "TextEditFunctionJS.js" as TEFuncJS

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
        id: target
        x: 0
        y: 5
        width: 40
        height: 17
        text: qsTr("Target:")
        font.pixelSize: 14
    }

    MouseArea {
        id: propertyMouseArea

        drag.target: parent
        drag.axis: Drag.XandYAxis

        anchors.fill: parent

        Button {
            id: saveButton
            x: 11
            y: 158
            text: "Save"

            onClicked: {

                TEFuncJS.appendTransition( targetTextInput.children[0].text , eventTextInput.children[0].text );
            }

            Keys.onEnterPressed: {

                TEFuncJS.appendTransition( targetTextInput.children[0].text , eventTextInput.children[0].text );
            }
        }



    }

    Text {
        id: event
        x: 0
        y: 45
        width: 85
        height: 16
        text: qsTr("Event:")
        font.pixelSize: 14
    }

    TextInputCustom {
        id: eventTextInput
        x: 44
        y: 45
        width: 62
        height: 16
    }

    TextInputCustom {
        id: targetTextInput
        x: 44
        y: 5
        width: 62
        height: 17
    }
}
