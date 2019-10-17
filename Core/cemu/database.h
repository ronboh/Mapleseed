#ifndef CEMUDATABASE_H
#define CEMUDATABASE_H

#include <QtCore/qglobal.h>
#include <QObject>
#include <QtDebug>
#include <QBuffer>
#include <QMutex>
#include <QFileInfo>
#include <QtXml>
#include <QtConcurrent>
#include <QMap>
#include <QNetworkRequest>
#include <QNetworkReply>

#include "../titleinfo.h"
#include "../settings.h"

class CemuDatabase : public QObject
{
    Q_OBJECT
public:
    CemuDatabase();

    static CemuDatabase* initialize();

    void init(QString jsonpath);

    void ParseJsonItem(QVariant &item);

    static TitleInfo *Create(QString xmlpath);

    static QString XmlValue(const QFileInfo &metaxml, const QString &field);

    static TitleInfo *find(QString id);

    static bool ValidId(QString id);

    static char *DownloadTMD(QString id, QString ver, QString dir);

    static QByteArray CreateTicket(QString id, QString key, QString ver, QString dir);

    static void DownloadFile(QUrl url, QString path);

    static bool isHttpRedirect(QNetworkReply *reply);

    static CemuDatabase *instance;

    QMap<QString, TitleInfo> database;

signals:
    void OnNewEntry(TitleInfo *titleInfo);
    void OnLoadComplete();

public slots:
};

#endif // CEMUDATABASE_H
