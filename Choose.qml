import QtQuick 2.15
import QtQuick.Window 2.15

Item {
    id: root
    property int choose: 0

    anchors.centerIn: parent

    ChooseButton {
        id: ch1
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -ch1.height-10
        anchors.horizontalCenterOffset: -ch1.width/2-10

        onClicked: root.choose=ch1.choose
    }
    ChooseButton {
        id: ch2
        anchors.centerIn: ch1
        anchors.verticalCenterOffset: ch1.height+10

        onClicked: root.choose=ch2.choose
    }
    ChooseButton {
        id: ch3
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -ch3.height-10
        anchors.horizontalCenterOffset: ch3.width/2+10

        onClicked: root.choose=ch3.choose
    }
    ChooseButton {
        id: ch4
        anchors.centerIn: ch3
        anchors.verticalCenterOffset: ch3.height+10

        onClicked: root.choose=ch4.choose
    }

    function load(chooseIndex){
        if(chooseIndex<0)
            return

        choose=-1;
        root.visible=true
        ch1.txt=chooseStorage.getOption(chooseIndex,0)
        ch2.txt=chooseStorage.getOption(chooseIndex,1)
        ch3.txt=chooseStorage.getOption(chooseIndex,2)
        ch4.txt=chooseStorage.getOption(chooseIndex,3)

        ch1.choose=chooseStorage.getLink(chooseIndex,0)
        ch2.choose=chooseStorage.getLink(chooseIndex,1)
        ch3.choose=chooseStorage.getLink(chooseIndex,2)
        ch4.choose=chooseStorage.getLink(chooseIndex,3)
    }

    function loadMenu(chooseIndex) {
        ch1.txt= (chooseIndex===0) ? "Avvia il gioco" : ""
        ch2.txt= (chooseIndex===0) ? "Esci dal gioco" : ""
        ch3.txt= (chooseIndex===0) ? "Nuova partita"  : ""
        ch4.txt= (chooseIndex===0) ? "Opzioni"        : "Indietro"

        ch1.choose=1
        ch2.choose=2
        ch3.choose=3
        ch4.choose=4
    }
}
