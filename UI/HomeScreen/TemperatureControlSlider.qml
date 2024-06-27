import QtQuick 2.15
import QtQuick.Controls 2.15
// import Brainey 1.0

Slider {
    id: temperatureControlSlider
    from: 55
    to: 85
    stepSize: 1
    orientation: Qt.Vertical
    onValueChanged: {
        systemController.targetTemp = value
    }

    background: Rectangle {
        height: parent.height
        width: 3
        anchors.centerIn: parent
    }

    handle: Rectangle {
        y: temperatureControlSlider.visualPosition * (temperatureControlSlider.availableHeight - height)
        implicitWidth: 76
        implicitHeight: 76
        radius: width / 2
        color: "black"
        border {
            color: "white"
            width: 3
        }
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 30

            text: temperatureControlSlider.value
        }
    }
}
