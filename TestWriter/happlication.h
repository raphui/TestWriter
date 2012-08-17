#ifndef HAPPLICATION_H
#define HAPPLICATION_H

#include "hdebug.h"
#include "htypes.h"
#include "hfilemanager.h"

#include <QObject>

class HApplication : QObject
{
    Q_OBJECT

    public:
        HApplication();
        int init();
        Q_INVOKABLE int createFile( QString filename );

    private:
        HFileManager *fileManager;

};

#endif // HAPPLICATION_H
