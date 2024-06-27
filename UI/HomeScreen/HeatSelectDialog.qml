import QtQuick 2.15
import Brainey 1.0

Rectangle {
    id: heatSelectDialog

    signal destroyMe()

    anchors.fill: parent
    color: Qt.rgba( 0, 0, 0, 0 )

    MouseArea {
        anchors.fill: parent
        onClicked: heatSelectDialog.destroyMe()
    }

    Rectangle {
        id: innerRectange
        width: parent.width / 2
        height: parent.height * 0.8
        anchors.centerIn: parent
        radius: 10
        color: "black"
        border.color: "white"
        border.width: 3
    }
}
