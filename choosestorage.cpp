#include "choosestorage.h"

ChooseStorage::ChooseStorage(QObject *parent)
    : QObject{parent}{
    std::vector<int> link;
    link.push_back(0);
    link.push_back(1);
    link.push_back(0);
    link.push_back(1);
    std::vector<QString> options;
    options.push_back("1111?");
    options.push_back("2222222?");
    options.push_back("3?");
    options.push_back("44?");

            storage.push_back({
                                  options,
                                  link
                              });
}

QString ChooseStorage::getOption(int p, int i){
    return storage.at((long)p).options[i];
}

int ChooseStorage::getLink(int p, int i){
    return storage.at((long)p).links[i];
}
