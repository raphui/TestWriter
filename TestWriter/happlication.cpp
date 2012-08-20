#include "happlication.h"

HApplication::HApplication()
{

}

int HApplication::init()
{
    TRACE_2( HAPPLICATION , "HApplication init().");

    fileManager = new HFileManager();

    return PC_SUCCESS;
}

int HApplication::createFile(QString filename)
{
    TRACE_2( HAPPLICATION , "HApplication createFile( %s )." , qPrintable( filename ) );

    return fileManager->createFile( filename );
}

int HApplication::exitApplication()
{
    TRACE_2( HAPPLICATION , "HApplication exitApplication().");

    fileManager->closeFile();

    return PC_SUCCESS;
}

void HApplication::construcItem(QString name)
{
    TRACE_2( HAPPLICATION , "HApplication construcItem( %s )." , qPrintable( name ) );

    if( name == "initialState" )
        qDebug() << "IS created.";
    else if( name == "state" )
        qDebug() << "S created.";
    else if( name == "finalState" )
        qDebug() << "FS created.";
}
