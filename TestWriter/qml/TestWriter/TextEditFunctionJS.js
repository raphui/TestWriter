function appendState( name , log , invokation ) {

    testString();

    string += "\t<state id=\"" + name + "\">\n";

    if( log != "" )
    {
        string += "\t\t<onentry>\n";
        string += "\t\t\t<log label=\"\" level=\"\" expr=\"" + log + "\" />\n";
        string += "\t\t</onentry>\n";
    }

    if( invokation != "" )
    {
        string += "\t\t<invoke type=\"httv-invok\">\n";
        string += "\t\t\t<content>\n";
        string += "\t\t\t\t" + invokation + "\n";
        string += "\t\t\t</content>\n";
        string += "\t\t</invoke>\n";
    }

    appendString();
}


function appendTransition( target , event ) {

    testString();

    string += "\t\t<transition target=\"" + target + "\" event=\"" + event + "\" />\n";
    string += "\t</state>\n"

    appendString();
 }

function appendFinalState( name ) {

    testString();

    string += "\t<final id=\"" + name + "\" />\n";

    appendString();
}

function testString() {

    string = "";

    if( panel.text.length > 0 )
        string = panel.text;
}

function appendString() {

    panel.text = string;
}

var string;
var panel = dropPanelEdit.children[0];
