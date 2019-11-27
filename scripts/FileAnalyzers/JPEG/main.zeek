module JPEG;

export {
	redef enum Log::ID += { LOG };

	type Info: record {
		## Current timestamp.
		ts:                  time              &log;
		## File id of this portable executable file.
		id:                  string            &log;
		total_bytes:         count             &log &optional;
		width:               count             &log &optional;
		height:              count             &log &optional;
		jfif_major:          count             &log &optional;
		jfif_minor:          count             &log &optional;
		comment:             string            &log &optional;
	};

	## Event for accessing logged records.
	global log_jpeg: event(rec: Info);

	## A hook that gets called when we first see a JPEG file.
	global set_file: hook(f: fa_file);
}

redef record fa_file += {
	jpeg: Info &optional;
};

event zeek_init() &priority=5
	{
	Log::create_stream(LOG, [$columns=Info, $ev=log_jpeg, $path="jpeg"]);
	}

hook set_file(f: fa_file) &priority=5
	{
	if ( ! f?$jpeg )
	    {
		f$jpeg = [$ts=network_time(), $id=f$id];
	    }
    }

event file_jpeg(f: fa_file) &priority=5
	{
	hook set_file(f);
    if (f?$total_bytes)
        f$jpeg$total_bytes = f$total_bytes;
	}

event file_jpeg_marker(f: fa_file, m: FileAnalyzers::JPEGMarker)
    {
    	hook set_file(f);

        switch( m$marker_val ) {
        # This will be SOF0 0xC0
        case 192:
            fallthrough;
        # This will be SOF1 0xC1
        case 193:
            fallthrough;
        # This will be SOF2 0xC2
        case 194:
            fallthrough;
        # This will be SOF3 0xC3
        case 195:
            fallthrough;
        # This will be SOF5 0xC5
        case 197:
            fallthrough;
        # This will be SOF6 0xC6
        case 198:
            fallthrough;
        # This will be SOF7 0xC7
        case 199:
            fallthrough;
        # This will be SOF9 0xC9
        case 201:
            fallthrough;
        # This will be SOF10 0xCA
        case 202:
            fallthrough;
        # This will be SOF11 0xCB
        case 203:
            fallthrough;
        # This will be SOF13 0xCD
        case 205:
            fallthrough;
        # This will be SOF14 0xCE
        case 206:
            fallthrough;
        # This will be SOF15 0xCF
        case 207:
            if (! f$jpeg?$height )
                {
                f$jpeg$height = bytestring_to_count(m$data[1:3]);
                f$jpeg$width = bytestring_to_count(m$data[3:5]);
                }
            break;
        # This will be app0 0xE0
        case 224:
            f$jpeg$jfif_major = bytestring_to_count(m$data[5:6]);
            f$jpeg$jfif_minor = bytestring_to_count(m$data[5:6]);
            break;
        # This will be comment 0xFE
        case 254:
            f$jpeg$comment = m$data;
            break;
        }
    }

event file_state_remove(f: fa_file) &priority=-5
	{
	if ( f?$jpeg )
	    {
		Log::write(LOG, f$jpeg);
		}
	}