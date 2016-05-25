TEMPLATE = app
#TARGET = quicknanobrowser

#HEADERS =
SOURCES = main.cpp

OTHER_FILES += main.qml

RESOURCES += qml.qrc

QT += qml quick webengine

CONFIG += c++11

qtHaveModule(widgets) {
    QT += widgets # QApplication is required to get native styling with QtQuickControls
}
