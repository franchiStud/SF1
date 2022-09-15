import QtQuick 2.15
import QtQuick.Window 2.15

Item {
    id: root

    property string currentLocation: "home"

    property ListModel usualItems
    property ListModel suitcaseItems

    anchors.bottom: parent.bottom
    anchors.horizontalCenter: parent.horizontalCenter

    Image {
        id: ch1
        anchors.bottom: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -ch1.width-70

    }
    Image {
        id: ch2
        anchors.bottom: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -50
    }
    Image {
        id: ch3
        anchors.bottom: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: ch3.width
    }

    Timer {
        id: loadTimer
        running: false; repeat: false; interval: 400
        onTriggered: load()
    }

    function loadCharacters() {

    }

    function load() {
        root.currentLocation=save.getPlayerPosition()

        loadCharacters()

        root.visible=true
    }

    function loadTimerStart() { loadTimer.start() }
}
