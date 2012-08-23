function drop(  item , parent ) {

    if( parent.children.length > 0 )
    {
        console.log("Deleting object children on the " + parent );
        parent.children[0].destroy();

    }

    var imgComp = Qt.createComponent( item );

    if( imgComp.status == Component.Ready )
    {
//                    var img = imgComp.createObject( centerPanel , {"x" : mouseX , "y" : mouseY } );


        var img = imgComp.createObject( parent , {} );

    }
    else
    {
        console.log( Component.errorString );
    }
    
}
