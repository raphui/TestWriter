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
        void setInitial( bool val );
        void setFinal( bool val );
        void setInvokationString( QString inv );

        QString getId();
        QString getInvokationString();
        bool isInitial();
        bool isFinal();

    private:
        QString id;
        bool initial;
        bool final;
        QString invokationString;

};

#endif // HSTATE_H
