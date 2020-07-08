import QtQuick 2.3
import QtQuick.Window 2.2

Window {

    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MouseArea {
        anchors.fill: parent
        onClicked: {
//            Qt.quit();
        }
    }

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
        color: "red"
    }

    Rectangle{
        id:rect1
        visible: true
        width: parent.width / 4
        height: parent.height / 4
        x: parent.width / 2 - width / 2
        y: parent.height / 4 - height / 2
        color: "green"
        radius: 20

        border{
            width: 2
            color: "black"
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {

                rect1.color = "red"
                console.log("Hello world!")
            }

            onDoubleClicked: {
                rect1.color = "green"
            }
        }
    }

    Rectangle{
        id:rect2
        visible: true
        width: parent.width / 4
        height: parent.height / 4
        anchors.top: rect1.bottom
        anchors.left: rect1.left
        color: "blue"
        radius: 20

        border{
            width: 2
            color: "yellow"
        }
    }
}
