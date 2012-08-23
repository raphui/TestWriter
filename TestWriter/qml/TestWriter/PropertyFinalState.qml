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
        id: nameText
        x: 0
        y: 7
        width: 40
        height: 17
        text: qsTr("Name:")
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

                TEFuncJS.appendFinalState( nameTextInput.children[0].text );
            }
        }



    }

    TextInputCustom {
        id: nameTextInput
        x: 49
        y: 7
        width: 64
        height: 17
    }
}
