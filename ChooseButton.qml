import QtQuick 2.15
import QtQuick.Window 2.15

Image {
    property string txt
    property real choose

    signal clicked()

    anchors.horizontalCenter: parent.horizontalCenter

    source: "assets/choose.png"

    sourceSize: "340x121"

    Text {
        text: txt
        font.pixelSize: 30
        color: "white"
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: parent.clicked()
    }
}
