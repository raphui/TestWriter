#ifndef HAPPLICATION_H
#define HAPPLICATION_H

#include "hdebug.h"
#include "htypes.h"
#include "hfilemanager.h"
#include "hitemfactory.h"

#include <QObject>

class HApplication : public QObject
{
    Q_OBJECT

    public:
        HApplication();
        int init();
        Q_INVOKABLE int createFile( QString filename );
        Q_INVOKABLE int exitApplication();
        Q_INVOKABLE void construcItem( QString name );

    private:
        HFileManager *hFileManager;
        HItemFactory *hItemFactory;

};

#endif // HAPPLICATION_H
