#include <QtWidgets/QApplication>
#include <QtQml/QQmlApplicationEngine>
#include <QtWebEngine/qtwebengineglobal.h>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QtWebEngine::initialize();

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
