import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: settingsScreen
    color: "black"
    anchors.fill: parent

    StackView {
        id: settingsStackView
        anchors.fill: parent
        initialItem: "SettingsMainMenu.qml"
        // clip: true
    }

    Image {
        id: backButton

        anchors {
            left: parent.left
            top: parent.top
            leftMargin: 30
            topMargin: 50
        }
        width: 40
        height: 40
        source: "qrc:/UI/Assets/previous.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if ( settingsStackView.depth >= 2 )
                    settingsStackView.pop()
                else
                    mainLoader.source = "qrc:/UI/HomeScreen/HomeScreen.qml"
            }
        }
    }

}

