#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include <dialoguestorage.h>
#include <choosestorage.h>
#include <save.h>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    DialogueStorage dialogueStorage;
    ChooseStorage chooseStorage;
    Save save;

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QQmlContext * context = engine.rootContext();
    context->setContextProperty("dialogueStorage",&dialogueStorage);
    context->setContextProperty("chooseStorage",&chooseStorage);
    context->setContextProperty("save",&save);

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
