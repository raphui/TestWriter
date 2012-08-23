#include "hstate.h"

HState::HState()
{
}

void HState::setId(QString id)
{
    TRACE_2( HSTATE , "HState setId( %s )." , qPrintable( id ) );

    this->id = id;
}

void HState::setInitial(bool val)
{
    TRACE_2( HSTATE , "HState setInitial()." );

    this->initial = val;
}

void HState::setFinal(bool val)
{
    TRACE_2( HSTATE , "HState setFinal()." );

    this->final = val;
}

void HState::setInvokationString(QString inv)
{
    TRACE_2( HSTATE , "HState setInvokationString( %s ).", qPrintable( inv ) );

    this->invokationString = inv;
}

QString HState::getId()
{
    TRACE_2( HSTATE , "HState getId()." );

    return this->id;
}

QString HState::getInvokationString()
{
    TRACE_2( HSTATE , "HState getInvokationString()." );

    return this->invokationString;
}

bool HState::isInitial()
{
    TRACE_2( HSTATE , "HState isInitial()." );

    if( this->initial )
        return true;
    else
        return false;
}

bool HState::isFinal()
{
    TRACE_2( HSTATE , "HState isFinal()." );

    if( this->final )
        return true;
    else
        return false;
}
