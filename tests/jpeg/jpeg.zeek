# @TEST-EXEC: zeek -r $TRACES/http_with_jpegs.pcap %INPUT >jpeg.out
# @TEST-EXEC: btest-diff jpeg.out
# @TEST-EXEC: btest-diff jpeg.log

@load Zeek/JPEG

event file_jpeg_marker(f: fa_file, m: Zeek::JPEGMarker)
    {
      print m;
    }

