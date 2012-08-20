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
        int closeFile();

    private:
        QFile currentFile;
        QTextStream streamFile;
};

#endif // HFILEMANAGER_H
