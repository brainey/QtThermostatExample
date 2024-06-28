import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: settingsScreen
    color: "black"
    anchors.fill: parent

    Image {
        id: backButton

        anchors {
            left: parent.left
            top: parent.top
            margins: 10
        }
        width: 40
        height: 40
        source: "qrc:/UI/Assets/previous.png"

        MouseArea {
            anchors.fill: parent
            onClicked: mainLoader.source = "qrc:/UI/HomeScreen/HomeScreen.qml"
        }
    }

    Rectangle {
        id: settingsRectange

        width: parent.width / 2
        height: parent.height * 0.8
        anchors.centerIn: parent
        radius: 10
        color: "black"
        border.color: "white"
        border.width: 3
    }
}

