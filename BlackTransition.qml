import QtQuick 2.15
import QtQuick.Window 2.15

Image {
    anchors.fill: parent

    source: "assets/bg/transition.png"
    opacity: 0

    Behavior on opacity {
        NumberAnimation { duration: 400 }
    }

    Timer {
        id: opacityTimer
        running: false; repeat: false; interval: 1500
        onTriggered: opacity=0
    }

    function launch(){
        opacity=1;
        opacityTimer.running=true
    }
}
