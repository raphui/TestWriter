#ifndef HSTATE_H
#define HSTATE_H

#include "hdebug.h"
#include "htypes.h"

#include <QObject>

class HState
{
    public:
        HState();

        void setId( QString id );

        QString getId();

    private:
        QString id;

};

#endif // HSTATE_H
