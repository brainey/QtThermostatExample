import QtQuick 2.15

Rectangle {
    id: aboutScreenBackground

    width: parent.width * 0.75
    height: parent.height * 0.8
    anchors.centerIn: parent
    radius: 10
    color: "black"
    border.color: "white"
    border.width: 3

    Text {
        anchors {
            top: parent.top
            left: parent.left
            leftMargin: 40
            topMargin: 60
        }

        color: "white"
        font.pixelSize: 30
        text: "Made by:<br>Techno Bill<br><br>Based on tutorial by:<br>Monty The Software Engineer<br><br>Developed using Qt/Qml"
    }
}
