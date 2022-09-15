import QtQuick 2.15
import QtQuick.Window 2.15

Item {
    property int i: 0;
    property int nextLink

    signal next()

    ListModel {
        id: dialogue
    }

    anchors.bottom: parent.bottom
    anchors.horizontalCenter: parent.horizontalCenter

    TextBox {
        id: textBox
    }

    MouseArea {
        anchors.fill: textBox

        onClicked: launch()
    }

    function load(dialogueIndex){
        if(dialogueIndex<0) return;

        visible=true
        dialogue.clear()

        do{
            dialogue.append({
                                name: dialogueStorage.getName(dialogueIndex),
                                txt: dialogueStorage.getTxt(dialogueIndex),
                                character: dialogueStorage.getCharacter(dialogueIndex),
                            })
        } while(dialogueStorage.next(dialogueIndex))

        nextLink=dialogueStorage.getLink(dialogueIndex)

        launch()
    }

    function launch(){
        if(i<dialogue.count) {
            textBox.name=dialogue.get(i).name
            textBox.txt=dialogue.get(i).txt
            textBox.character=dialogue.get(i++).character

        }
        else {
            i=0
            visible=false

            if(nextLink>=0)
                next();
        }
    }
}
