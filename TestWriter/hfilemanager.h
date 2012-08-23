#ifndef HFILEMANAGER_H
#define HFILEMANAGER_H

#include "hdebug.h"
#include "htypes.h"
#include "hstate.h"
#include "htransition.h"
#include "hinvokation.h"

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

        int writeInitialState();
        int writeFinalState();
        int writeState();
        int writeTransition();

    private:
        QFile currentFile;
        QTextStream streamFile;
};

#endif // HFILEMANAGER_H
