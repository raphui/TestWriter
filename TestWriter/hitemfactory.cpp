#include "hitemfactory.h"

HItemFactory::HItemFactory()
{
}

int HItemFactory::constructItem(QString type)
{
    TRACE_2( HITEMFACTORY , "HItemFactory construct( %s )." , qPrintable( type ) );

    if( type == "initialState" )
    {

    }
    else if( type == "state" )
    {

    }
    else if( type == "finalState" )
    {

    }
    else if( type == "transition" )
    {

    }
    else
    {
        TRACE_ERROR( HITEMFACTORY , "Wrong type : %s." , qPrintable( type ) );

        return PC_ERROR;
    }


    return PC_SUCCESS;
}
