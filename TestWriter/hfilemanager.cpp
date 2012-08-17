#include "hfilemanager.h"

HFileManager::HFileManager()
{
}

int HFileManager::createFile( QString filename )
{
    TRACE_2( HFILEMANAGER , "HFileManager createFile( %s )." , qPrintable( filename ) );

    currentFile.setFileName( filename );

    if( this->openFile( filename ) )
    {
        QTextStream stream;

        stream.setDevice( &currentFile );

        stream << "poulet";

        this->closeFile( filename );
    }



    return PC_SUCCESS;
}

int HFileManager::openFile( QString filename )
{
    TRACE_2( HFILEMANAGER , "HFileManager openFile( %s )." , qPrintable( filename ) );

    return currentFile.open( QIODevice::WriteOnly | QIODevice::Text );

}

int HFileManager::saveFile( QString filename )
{
    TRACE_2( HFILEMANAGER , "HFileManager saveFile( %s )." , qPrintable( filename ) );

    return PC_SUCCESS;
}

int HFileManager::closeFile( QString filename )
{
    TRACE_2( HFILEMANAGER , "HFileManager closeFile( %s )." , qPrintable( filename ) );

    currentFile.close();

    return PC_SUCCESS;
}
