#include "hfilemanager.h"

HFileManager::HFileManager()
{
}

int HFileManager::createFile( QString filename )
{
    TRACE_2( HFILEMANAGER , "HFileManager createFile( %s )." , qPrintable( filename ) );

    currentFile.setFileName( filename );

    if( !this->openFile( filename ) )
        return PC_ERROR;



    return PC_SUCCESS;
}

int HFileManager::openFile( QString filename )
{
    TRACE_2( HFILEMANAGER , "HFileManager openFile( %s )." , qPrintable( filename ) );

    if( currentFile.open( QIODevice::WriteOnly | QIODevice::Text ) )
    {
        streamFile.setDevice( &currentFile );

        return PC_SUCCESS;
    }
    else
    {
        return PC_ERROR;
    }

}


int HFileManager::saveFile( QString filename )
{
    TRACE_2( HFILEMANAGER , "HFileManager saveFile( %s )." , qPrintable( filename ) );

    return PC_SUCCESS;
}

int HFileManager::closeFile()
{
    TRACE_2( HFILEMANAGER , "HFileManager closeFile()." );

    currentFile.close();

    return PC_SUCCESS;
}

