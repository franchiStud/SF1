import QtQuick 2.15
import QtQuick.Window 2.15

Image {
    id: root

    signal start()
    property int status: 0

    anchors.bottom: parent.bottom

    source: "assets/menutrain.png"
    opacity: 1

    Choose {
        id: choose1

        onChooseChanged: {
            if(choose1.choose===1)
                root.start()
            else if(choose1.choose===2)
                window.close()
            else if(choose1.choose===3){
                root.start()
            } else if(choose1.choose===4){
                root.x-=1125
                root.status++
                choose2.loadMenu(1)
            }
            choose1.choose=0;
        }
    }
    Choose {
        id: choose2

        anchors.centerIn: choose1
        anchors.horizontalCenterOffset: 1125

        onChooseChanged: {
            if(choose2.choose===1)
                root.start()
            else if(choose2.choose===2)
                window.close()
            else if(choose2.choose===3){
                root.start()
            } else if(choose2.choose===4){
                root.x+=1125
                root.status--
                choose1.loadMenu(0)
            }
            choose2.choose=0;
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if(root.status===0){
                root.x-=1125
                root.status++
                choose1.loadMenu(0)
                enabled=false
            }
        }
    }

    Behavior on x {
        NumberAnimation { duration: 500 }
    }
    Behavior on opacity {
        NumberAnimation { duration: 1500 }
    }
}
