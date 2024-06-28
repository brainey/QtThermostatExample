import QtQuick 2.15

Item {
    ListModel {
        id: settingsMainMenuListModel

        ListElement {
            menuText: "Temperature Units"
            iconSource: "qrc:/UI/Assets/thermometer.png"
            color: "white"
        }
        ListElement {
            menuText: "Schedule"
            iconSource: "qrc:/UI/Assets/calendar.png"
        }
        ListElement {
            menuText: "WiFi Settings"
            iconSource: "qrc:/UI/Assets/wifi.png"
        }
        ListElement {
            menuText: "About"
            iconSource: "qrc:/UI/Assets/info-button.png"
            sourcePage: "AboutScreen.qml"
        }
    }

    Rectangle {
        id: stackViewBackground

        width: parent.width * 0.7
        height: parent.height * 0.8
        anchors.centerIn: parent
        radius: 10
        color: "black"
        border.color: "white"
        border.width: 3
    }

    ListView {
        id: settingsListView

        anchors.fill: stackViewBackground
        model: settingsMainMenuListModel
        interactive: false
        delegate: Rectangle {
            id: mainButton

            width: settingsListView.width
            height: settingsListView.height / 4 // any way to programmically get number of elements in heatListView ?
            color: "black"
            border.color: "white"
            border.width: 4
            radius: 5

            Image {
                id: iconImage
                anchors {
                    verticalCenter: parent.verticalCenter
                    left: parent.left
                    leftMargin: 30
                }
                source: iconSource
                width: 48
                height: 48
            }

            Text {
                id: mainText
                anchors {
                    verticalCenter: parent.verticalCenter
                    left: iconImage.right
                    leftMargin: 40
                }
                color: "white"
                font.pixelSize: 30
                text: menuText
            }

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    mainButton.color = "white"
                    mainText.color = "black"
                }
                onReleased: {
                    mainButton.color = "black"
                    mainText.color = "white"
                }
                onClicked: {
                    if ( sourcePage )
                        settingsStackView.push( sourcePage )
                }

            }
        }
    }
}
