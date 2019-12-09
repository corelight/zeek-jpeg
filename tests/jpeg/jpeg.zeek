# @TEST-EXEC: zeek -r $TRACES/http_with_jpegs.pcap %INPUT >jpeg.out
# @TEST-EXEC: btest-diff jpeg.out
# @TEST-EXEC: btest-diff jpeg.log

@load FileAnalyzers/JPEG

event file_jpeg_marker(f: fa_file, m: FileAnalyzers::JPEGMarker)
    {
      print m;
    }

