%include binpac.pac
%include bro.pac

%extern{
	#include "events.bif.h"
%}

analyzer JPEG withcontext {
	connection: MockConnection;
	flow:       File;
};

connection MockConnection(bro_analyzer: BroFileAnalyzer) {
	upflow = File;
	downflow = File;
};

%include jpeg-file.pac

flow File {
	flowunit = JPEG_File withcontext(connection, this);
}
 
%include jpeg-analyzer.pac
