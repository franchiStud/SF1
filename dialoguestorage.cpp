#include "dialoguestorage.h"

#include <iostream>

DialogueStorage::DialogueStorage(QObject *parent)
    : QObject{parent}
{
    std::vector<dialogueLine> temp;
    temp.push_back({
                       "ss",
                       "gfggjkgdtreyrh",
                       "assets/charph1.png"
                   });
    temp.push_back({
                       "ss",
                       "Fsdfdsgfs\ndghuuuuueqytufihuis eahdfgusgjsg",
                       "assets/charph1.png"
                   });
    temp.push_back({
                       "tdhs",
                       "Fsyfitqyyio\nis eeahryteyfgusgjsg",
                       "assets/charph2.png"
                   });

    storage.push_back(temp);

    temp.clear();

    temp.push_back({
                       "sreythdbf",
                       "hhhhhh",
                       "assets/charph2.png"
                   });
    temp.push_back({
                       "srerwtdbf",
                       "3456",
                       "assets/charph1.png"
                   });
    temp.push_back({
                       "ss",
                       "Fsdfdsgfs\ndghuuuuueqytufihuis eahdfgusgjsg",
                       "assets/charph1.png"
                   });
    temp.push_back({
                       "tdhs",
                       "Fsyfitqyyio\nis eeahryteyfgusgjsg",
                       "assets/charph2.png"
                   });
    storage.push_back(temp);

    links.push_back(-1);
    links.push_back(0);

}

bool DialogueStorage::next(int p){
    i++;
    try {
        storage.at((long)p).at((long)i).name;
    } catch (...) {
        i=0;
        return false;
    }
    return true;
}

QString DialogueStorage::getName(int p) {
    return storage.at((long)p).at((long)i).name;
}

QString DialogueStorage::getTxt(int p) {
    return storage.at((long)p).at((long)i).txt;
}

QString DialogueStorage::getCharacter(int p){
    return storage.at((long)p).at((long)i).character;
}


int DialogueStorage::getLink(int p){
    return links.at((long)p);
}

int DialogueStorage::getEvent(int p){
    return events.at((long)p);

}
