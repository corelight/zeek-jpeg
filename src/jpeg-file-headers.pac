type Headers = record {
    jpeg_header     : JPEG_Header;
} &let {
    # Do not care about parsing rest of the file so mark done now ...
    proc:             bool   = $context.connection.mark_done();
};

type JPEG_Header = record {
    soi_start           : uint8;
    soi_val             : uint8;
    markers             : JPEG_Marker[5];
} &length=500;

type JPEG_Marker = record {
    marker_start : uint8;
    marker_val   : uint8;
    length       : uint16;
    data         : bytestring &length=length-2;
} &length=length+2;