#ifndef HFILEMANAGER_H
#define HFILEMANAGER_H

#include "hdebug.h"
#include "htypes.h"

#include <QObject>
#include <QFile>

class HFileManager
{
    public:
        HFileManager();
        int createFile( QString filename );
        int openFile( QString filename );
        int saveFile( QString filename );
        int closeFile( QString filename );

    private:
        QFile currentFile;
};

#endif // HFILEMANAGER_H
