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
