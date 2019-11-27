#include "JPEG.h"
#include "file_analysis/Manager.h"

using namespace file_analysis;

JPEG::JPEG(RecordVal* args, File* file)
    : file_analysis::Analyzer(file_mgr->GetComponentTag("JPEG"), args, file)
	{
	conn = new binpac::JPEG::MockConnection(this);
	interp = new binpac::JPEG::File(conn);
	done = false;

    if ( file_jpeg )
        mgr.QueueEventFast(file_jpeg, {
            GetFile()->GetVal()->Ref()
            });

    }

JPEG::~JPEG()
	{
	delete interp;
	delete conn;
	}

bool JPEG::DeliverStream(const u_char* data, uint64_t len)
	{
	if ( conn->is_done() )
		return false;

	try
		{
		interp->NewData(data, data + len);
		}
	catch ( const binpac::Exception& e )
		{
		return false;
		}

	return ! conn->is_done();
	}

bool JPEG::EndOfFile()
	{
	return false;
	}
