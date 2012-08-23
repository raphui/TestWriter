#ifndef HITEMFACTORY_H
#define HITEMFACTORY_H

#include "hdebug.h"
#include "htypes.h"

#include <QObject>

class HItemFactory : public QObject
{
    public:
        HItemFactory();
        int constructItem( QString type );

    private:
};

#endif // HITEMFACTORY_H
