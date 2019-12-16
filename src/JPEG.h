#pragma once

#include <string>

#include "Val.h"
//#include "File.h"
//#include "../File.h"
#include "events.bif.h"
#include "types.bif.h"
#include "jpeg_pac.h"

namespace file_analysis {

/**
 * Analyze JPEG files
 */
class JPEG : public file_analysis::Analyzer {
public:
    ~JPEG();

    static file_analysis::Analyzer* Instantiate(RecordVal* args, File* file)
        { return new JPEG(args, file); }

    virtual bool DeliverStream(const u_char* data, uint64_t len);

    virtual bool EndOfFile();

protected:
    JPEG(RecordVal* args, File* file);
    binpac::JPEG::File* interp;
    binpac::JPEG::MockConnection* conn;
    bool done;
};

} // namespace file_analysis
