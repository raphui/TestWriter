#ifndef HTRANSITION_H
#define HTRANSITION_H

#include "hdebug.h"
#include "htypes.h"

#include <QObject>

class HTransition
{
    public:
        HTransition();

        void setTarget( QString target );
        void setEvent( QString event );
        void setCond( QString cond );

        QString getTarget();
        QString getEvent();
        QString getCond();

    private:
        QString target;
        QString event;
        QString cond;
};

#endif // HTRANSITION_H
