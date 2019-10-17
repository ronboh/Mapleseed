#-------------------------------------------------
#
# Project created by QtCreator 2019-06-23T18:16:20
#
#-------------------------------------------------

QT += core gui xml network concurrent gamepad

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = MapleSeed
TEMPLATE = app

RC_FILE = resource.rc

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        cemu/QtCompressor.cpp \
        cemu/crypto.cpp \
        cemu/database.cpp \
        cemu/library.cpp \
        gamepad.cpp \
        helper.cpp \
        logging.cpp \
        main.cpp \
        mainwindow.cpp \
        network/downloadqueue.cpp \
        network/queueinfo.cpp

HEADERS += \
    cemu/QtCompressor.h \
    cemu/crypto.h \
    cemu/database.h \
    cemu/library.h \
        gamepad.h \
        helper.h \
        logging.h \
        mainwindow.h \
        settings.h \
        titleinfo.h \
        network/downloadqueue.h \
        network/network_global.h \
        network/queueinfo.h \

FORMS += \
        mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

contains(QT_ARCH, x86_64) {
unix|win32: LIBS += -L$$PWD/../../Libraries/Qt/Tools/OpenSSL/Win_x64/lib/ -llibcrypto
INCLUDEPATH += $$PWD/../../Libraries/Qt/Tools/OpenSSL/Win_x64/include
DEPENDPATH += $$PWD/../../Libraries/Qt/Tools/OpenSSL/Win_x64/include
} else {
unix|win32: LIBS += -L$$PWD/../../Libraries/Qt/Tools/OpenSSL/Win_x86/lib/ -llibcrypto
INCLUDEPATH += $$PWD/../../Libraries/Qt/Tools/OpenSSL/Win_x86/include
DEPENDPATH += $$PWD/../../Libraries/Qt/Tools/OpenSSL/Win_x86/include
}
