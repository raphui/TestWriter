// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    width: 180
    height: 28
    radius: 0

    TextInput {
        id: textInput
        x: 1
        y: 0
        text: qsTr("")
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 1
        anchors.topMargin: 0
        anchors.fill: parent
        font.pixelSize: 16
    }
}
