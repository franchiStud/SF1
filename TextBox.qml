import QtQuick 2.15
import QtQuick.Window 2.15

Image {

    property string name
    property string txt
    property string character

    anchors.horizontalCenter: parent.horizontalCenter
    anchors.bottom: parent.bottom
    anchors.horizontalCenterOffset: -150

    source: "assets/txtbox.png"

    Image {
        source: character

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.horizontalCenterOffset: 400
    }

    Text {
        text: qsTr(name)
        color: "white"
        font.pixelSize: 40

        x: 50
        y: 47
    }

    Text {
        text: qsTr(txt)
        color: "white"
        font.pixelSize: 30

        anchors.centerIn: parent
        anchors.verticalCenterOffset: 45
    }
}
