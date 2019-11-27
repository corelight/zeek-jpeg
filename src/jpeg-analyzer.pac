%extern{
#include "Event.h"
#include "file_analysis/File.h"
#include "events.bif.h"
#include "types.bif.h"
%}

%header{
%}

%code{
%}


refine flow File += {

	function proc_jpeg_header(h: JPEG_Header): bool
		%{

	    DBG_LOG(DBG_FILE_ANALYSIS, "TRYING TO PROCESS A JPEG!!!");

	    if ( file_jpeg_marker )
			{

            DBG_LOG(DBG_FILE_ANALYSIS, "PROCESSING A JPEG!!!");

            int markers[] = { 0, 1, 2, 3, 4 };
            for (int m: markers)
                {
                RecordVal* dh = new RecordVal(BifType::Record::FileAnalyzers::JPEGMarker);
                dh->Assign(0, val_mgr->GetCount(${h.markers[m].marker_val}));
                dh->Assign(1, val_mgr->GetCount(${h.markers[m].length}));
                dh->Assign(2, new StringVal(${h.markers[m].data}.length(), (const char*) ${h.markers[m].data}.data()));
                dh->Assign(3, val_mgr->GetCount(m));

                mgr.QueueEventFast(file_jpeg_marker, {
                    connection()->bro_analyzer()->GetFile()->GetVal()->Ref(),
                    dh
                    });
                }
            }

        DBG_LOG(DBG_FILE_ANALYSIS, "DONE PROCESSING A JPEG!!!");

		return true;
		%}
};

refine typeattr JPEG_Header += &let {
    proc : bool = $context.flow.proc_jpeg_header(this);
};