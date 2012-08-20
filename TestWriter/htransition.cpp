#include "htransition.h"

HTransition::HTransition()
{
}

void HTransition::setTarget(QString target)
{
    TRACE_2( HTRANSITION , "HTransition setTarget( %s )." , qPrintable( target ) );

    this->target = target;
}

void HTransition::setEvent(QString event)
{
    TRACE_2( HTRANSITION , "HTransition setEvent( %s )." , qPrintable( event ) );

    this->event = event;
}

void HTransition::setCond(QString cond)
{
    TRACE_2( HTRANSITION , "HTransition setCond( %s )." , qPrintable( cond ) );

    this->cond = cond;
}

QString HTransition::getTarget()
{
    TRACE_2( HTRANSITION , "HTransition getTarget().");

    return this->target;
}

QString HTransition::getEvent()
{
    TRACE_2( HTRANSITION , "HTransition getEvent().");

    return this->event;
}

QString HTransition::getCond()
{
    TRACE_2( HTRANSITION , "HTransition getCond().");

    return this->cond;
}
