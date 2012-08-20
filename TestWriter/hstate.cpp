#include "hstate.h"

HState::HState()
{
}

void HState::setId(QString id)
{
    TRACE_2( HSTATE , "HState setId( %s )." , qPrintable( id ) );

    this->id = id;
}

QString HState::getId()
{
    TRACE_2( HSTATE , "HState getId()." );

    return this->id;
}
