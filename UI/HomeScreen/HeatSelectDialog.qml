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

    ListModel {
        id: heatModel

        ListElement {
            controlText: "Heat"
            selectState: SystemController.HEATING
        }
        ListElement {
            controlText: "Cool"
            selectState: SystemController.COOLING
        }
        ListElement {
            controlText: "Auto"
            selectState: SystemController.AUTO
        }
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

    ListView {
        id: heatListView

        anchors.fill: innerRectange
        model: heatModel
        delegate: Rectangle {
            width: innerRectange.width
            height: innerRectange.height / 3 // any way to programmically get number of elements in heatListView ?
            color: "black"
            border.color: "white"
            border.width: 4
            radius: 5
            Text {
                anchors.centerIn: parent
                color: "white"
                font.pixelSize: 42
                text: controlText
            }
            MouseArea {
                anchors.fill: parent

                onClicked: {
                    systemController.systemState = selectState
                    // if ( controlText === "Heat" )
                    //     systemController.systemState = SystemController.HEATING
                    // else if ( controlText === "Cool" )
                    //     systemController.systemState = SystemController.COOLING
                    // else if ( controlText === "Auto" )
                    //     systemController.systemState = SystemController.AUTO

                    heatSelectDialog.destroyMe()
                }
            }
        }
    }
}
