import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: window

    width: 1280
    height: 720
    visible: true
    title: qsTr("Hello World")
    color: "black"

    property string currentLocation: mainGamePlay.currentLocation
    property string currentGame: "home"

    Image {
        id: background
        anchors.centerIn: parent

        width: 1280
        height: 720

        source: "assets/bg/"+window.currentLocation+".png"

        MainMenu {
            id: mainMenu
            onStart: {
                x-=750
                opacity=0
                blackTransition.launch()
                mainGamePlay.loadTimerStart()
            }
        }

        MainGamePlay {
            id: mainGamePlay
            visible: false
        }

        Dialogue {
            visible: false
            id: dialogueBox

            onNext: {
                dialogueBox.visible=false
                chooseBox.load(dialogueBox.nextLink)
            }
        }
        Choose {
            visible: false
            id: chooseBox

            onChooseChanged: {
                chooseBox.visible=false
                dialogueBox.load(chooseBox.choose)
            }
        }

        BlackTransition {
            id: blackTransition
        }
    }

//    MouseArea {
//        anchors.fill: parent
//        onClicked: {
//            enabled=false
//            blackTransition.launch()
//        }
//    }
}
