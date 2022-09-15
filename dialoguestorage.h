#include <QObject>
#include <QString>
#include <vector>

#ifndef DIALOGUESTORAGE_H
#define DIALOGUESTORAGE_H

struct dialogueLine {
    QString name;
    QString txt;
    QString character;
};


class DialogueStorage : public QObject
{
    Q_OBJECT
public:
    DialogueStorage(QObject *parent=nullptr);
private:
    std::vector<std::vector<dialogueLine>> storage;
    std::vector<int> links;
    std::vector<int> events;
    int i=0;

public slots:
    Q_INVOKABLE bool next(int p);
    Q_INVOKABLE QString getName(int p);
    Q_INVOKABLE QString getTxt(int p);
    Q_INVOKABLE QString getCharacter(int p);

    Q_INVOKABLE int getLink(int p);
    Q_INVOKABLE int getEvent(int p);
};

#endif // DIALOGUESTORAGE_H
