// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    width: 180
    height: 28
    radius: 0

    TextEdit {
        id: textEdit
        x: 1
        y: 0
        text: qsTr("")
        focus: true
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 1
        anchors.topMargin: 0
        anchors.fill: parent
        font.pixelSize: 12
    }
}
