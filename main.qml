import QtQuick 2.15
import QtQuick.Window 2.15
import Brainey 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Thermostat Example")

    SystemController {
        id: systemController
    }

    Loader {
        id: mainLoader
        anchors.fill: parent
        source: "./UI/HomeScreen/HomeScreen.qml"
    }
}
