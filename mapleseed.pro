#-------------------------------------------------
#
# Project created by QtCreator 2019-06-23T18:16:20
#
#-------------------------------------------------

QT += core gui xml network concurrent gamepad

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = MapleSeed
TEMPLATE = app

RC_FILE = src/resource.rc

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

INCLUDEPATH += src

FORMS += \
        mainwindow.ui

SOURCES += \
        src/cemu/QtCompressor.cpp \
        src/cemu/crypto.cpp \
        src/cemu/database.cpp \
        src/cemu/library.cpp \
        src/gamepad.cpp \
        src/helper.cpp \
        src/logging.cpp \
        src/main.cpp \
        src/mainwindow.cpp \
        src/network/downloadqueue.cpp \
        src/network/queueinfo.cpp

HEADERS += \
        src/cemu/QtCompressor.h \
        src/cemu/crypto.h \
        src/cemu/database.h \
        src/cemu/library.h \
        src/gamepad.h \
        src/helper.h \
        src/logging.h \
        src/mainwindow.h \
        src/settings.h \
        src/titleinfo.h \
        src/network/downloadqueue.h \
        src/network/network_global.h \
        src/network/queueinfo.h \

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

contains(QT_ARCH, x86_64) {
unix|win32: LIBS += -LC:/OpenSSL-v111-Win64/lib/ -llibcrypto
INCLUDEPATH += C:/OpenSSL-v111-Win64/include
DEPENDPATH += C:/OpenSSL-v111-Win64/include
} else {
unix|win32: LIBS += -LC:/OpenSSL-v111-Win32/lib/ -llibcrypto
INCLUDEPATH += C:/OpenSSL-v111-Win32/include
DEPENDPATH += C:/OpenSSL-v111-Win32/include
}
