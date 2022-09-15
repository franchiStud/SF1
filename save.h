#include <QObject>
#include <QProperty>
#include <vector>

#ifndef SAVE_H
#define SAVE_H

class Save : public QObject
{
    Q_OBJECT
public:
    Save();
private:
    QString playerPosition="start";
    QString usualItems="ticket&nothing&nothing&nothing&nothing&nothing&nothing";
    QString suitcaseItems="pocketwatch&nothing&nothing&nothing&nothing&nothing&nothing";

    size_t itemsIndex=0;
public slots:
    Q_INVOKABLE QString getPlayerPosition();
    Q_INVOKABLE void setPlayerPosition(QString playerPosition);

    Q_INVOKABLE QString getUsualItems();
    Q_INVOKABLE QString getSuitcaseItems();

    Q_INVOKABLE void setUsualItem(QString usualItems);
    Q_INVOKABLE void setSuitcaseItem(QString suitcaseItems);
};

#endif // SAVE_H
