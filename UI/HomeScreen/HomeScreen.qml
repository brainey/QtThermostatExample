import QtQuick 2.15
import Brainey 1.0

Item {
    Rectangle {
        id: mainBackground
        anchors.fill: parent
        color: "black"
        // visible: true


    }

    Text {
        id: currentTempText
        anchors.centerIn: parent
        color: "white"
        font.pixelSize: 200
        width: 200
        text: systemController.currentSystemTemperature
    }

    Text {
        id: systemStatus
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: currentTempText.bottom
            topMargin: 20
        }
        font.pixelSize: 30
        color: "white"
        text: systemController.systemStatusMessage

    }

    Image {
        id: heatCoolSelectIcon
        anchors {
            top: temperatureSlider.top
            right: currentTempText.left
            rightMargin: 100
        }
        width: 70
        height: 70
        source: {
            console.log(SystemController.systemState);
            console.log(SystemController.currentSystemTemperature);

            if ( systemController.systemState === SystemController.HEATING )
               return "qrc:/UI/Assets/flame.png"
            if ( systemController.systemState === SystemController.COOLING )
               return "qrc:/UI/Assets/ice-crystal.png"
            if ( systemController.systemState === SystemController.AUTO )
               return "qrc:/UI/Assets/auto.png"
            return "qrc:/UI/Assets/wifi.png"
        }

    }

    Image {
        id: settingsIcon
        anchors {
            bottom: temperatureSlider.bottom
            right: currentTempText.left
            rightMargin: 100
        }
        width: 70
        height: 70
        source: "qrc:/UI/Assets/settings.png"
    }

    TemperatureControlSlider {
        id: temperatureSlider
        anchors {
            top: parent.top
            bottom: parent.bottom
            left: currentTempText.right
            leftMargin: 100
            topMargin: 80
            bottomMargin: 80
        }
    }
}
