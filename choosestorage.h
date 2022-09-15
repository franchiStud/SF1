#include <QObject>
#include <QString>
#include <vector>

#ifndef CHOOSESTORAGE_H
#define CHOOSESTORAGE_H

struct options {
    std::vector<QString> options;
    std::vector<int> links;
};

class ChooseStorage : public QObject
{
    Q_OBJECT
public:
    ChooseStorage(QObject *parent=nullptr);
private:
    std::vector<options> storage;
public slots:
    Q_INVOKABLE QString getOption(int p, int i);
    Q_INVOKABLE int getLink(int p, int i);
};

#endif // CHOOSESTORAGE_H
