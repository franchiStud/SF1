#include "save.h"

Save::Save(): QObject{}{

}
QString Save::getPlayerPosition(){
    return playerPosition;
}

void Save::setPlayerPosition(QString playerPosition){
    this->playerPosition=playerPosition;
}

QString Save::getUsualItems(){
    return usualItems;
}

QString Save::getSuitcaseItems(){
    return suitcaseItems;
}

void Save::setUsualItem(QString usualItems){
    this->usualItems=usualItems;
}

void Save::setSuitcaseItem(QString suitcaseItems){
    this->suitcaseItems=suitcaseItems;
}
