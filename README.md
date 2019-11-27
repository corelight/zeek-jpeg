
# A Zeek FileAnalyzers::JPEG Plugin

## Building and Installing

This plugin can be built with:

```
./configure --zeek-dist=/your/zeek/src/dir
make
sudo make install
```

## Using

Once installed, this plugin can be loaded with the following Zeek script:

```
@load FileAnalyzers/JPEG

event file_jpeg_marker(f: fa_file, m: FileAnalyzers::JPEGMarker)
    {
    print m;
    }
```

You can download the example [PCAP file http_with_jpegs.cap](https://wiki.wireshark.org/SampleCaptures?action=AttachFile&do=get&target=http_with_jpegs.cap.gz) from the Wireshark project.

Here is what the output will look like:

```
$ zeek -B file_analysis -r pcaps/http_with_jpegs.cap jpeg.zeek 
[marker_val=224, len=16, data=JFIF\x00\x01\x01\x01\x00H\x00H\x00\x00, marker_num=0]
[marker_val=254, len=23, data=Created with The GIMP, marker_num=1]
[marker_val=219, len=67, data=\x00\x14\x0e\x0f\x12\x0f\x0d\x14\x12\x10\x12\x17\x15\x14\x18\x1e2!\x1e\x1c\x1c\x1e=,.$2I@LKG@FEPZsbPUmVEFd\x88emw{\x81\x82\x81N`\x8d\x97\x8c}\x96s~\x81|, marker_num=2]
[marker_val=219, len=67, data=\x01\x15\x17\x17\x1e\x1a\x1e;!!;|SFS||||||||||||||||||||||||||||||||||||||||||||||||||, marker_num=3]
[marker_val=194, len=17, data=\x08\x02\x00\x02\x00\x03\x01"\x00\x02\x11\x01\x03\x11\x01, marker_num=4]
[marker_val=224, len=16, data=JFIF\x00\x01\x01\x01\x00H\x00H\x00\x00, marker_num=0]
[marker_val=254, len=23, data=Created with The GIMP, marker_num=1]
[marker_val=219, len=67, data=\x00\x08\x06\x06\x07\x06\x05\x08\x07\x07\x07\x09\x09\x08\x0a\x0c\x14\x0d\x0c\x0b\x0b\x0c\x19\x12\x13\x0f\x14\x1d\x1a\x1f\x1e\x1d\x1a\x1c\x1c $.' ",#\x1c\x1c(7),01444\x1f'9=82<.342, marker_num=2]
[marker_val=219, len=67, data=\x01\x09\x09\x09\x0c\x0b\x0c\x18\x0d\x0d\x182!\x1c!22222222222222222222222222222222222222222222222222, marker_num=3]
[marker_val=194, len=17, data=\x08\x00Y\x01\xf4\x03\x01"\x00\x02\x11\x01\x03\x11\x01, marker_num=4]
[marker_val=224, len=16, data=JFIF\x00\x01\x01\x01\x00H\x00H\x00\x00, marker_num=0]
[marker_val=254, len=23, data=Created with The GIMP, marker_num=1]
[marker_val=219, len=67, data=\x00\x08\x06\x06\x07\x06\x05\x08\x07\x07\x07\x09\x09\x08\x0a\x0c\x14\x0d\x0c\x0b\x0b\x0c\x19\x12\x13\x0f\x14\x1d\x1a\x1f\x1e\x1d\x1a\x1c\x1c $.' ",#\x1c\x1c(7),01444\x1f'9=82<.342, marker_num=2]
[marker_val=219, len=67, data=\x01\x09\x09\x09\x0c\x0b\x0c\x18\x0d\x0d\x182!\x1c!22222222222222222222222222222222222222222222222222, marker_num=3]
[marker_val=192, len=17, data=\x08\x00\xf0\x00\xb4\x03\x01"\x00\x02\x11\x01\x03\x11\x01, marker_num=4]
[marker_val=224, len=16, data=JFIF\x00\x01\x01\x01\x00H\x00H\x00\x00, marker_num=0]
[marker_val=254, len=23, data=Created with The GIMP, marker_num=1]
[marker_val=219, len=67, data=\x00\x08\x06\x06\x07\x06\x05\x08\x07\x07\x07\x09\x09\x08\x0a\x0c\x14\x0d\x0c\x0b\x0b\x0c\x19\x12\x13\x0f\x14\x1d\x1a\x1f\x1e\x1d\x1a\x1c\x1c $.' ",#\x1c\x1c(7),01444\x1f'9=82<.342, marker_num=2]
[marker_val=219, len=67, data=\x01\x09\x09\x09\x0c\x0b\x0c\x18\x0d\x0d\x182!\x1c!22222222222222222222222222222222222222222222222222, marker_num=3]
[marker_val=192, len=17, data=\x08\x00\xf0\x00\xb4\x03\x01"\x00\x02\x11\x01\x03\x11\x01, marker_num=4]
[marker_val=224, len=16, data=JFIF\x00\x01\x01\x01\x00H\x00H\x00\x00, marker_num=0]
[marker_val=254, len=23, data=Created with The GIMP, marker_num=1]
[marker_val=219, len=67, data=\x00\x08\x06\x06\x07\x06\x05\x08\x07\x07\x07\x09\x09\x08\x0a\x0c\x14\x0d\x0c\x0b\x0b\x0c\x19\x12\x13\x0f\x14\x1d\x1a\x1f\x1e\x1d\x1a\x1c\x1c $.' ",#\x1c\x1c(7),01444\x1f'9=82<.342, marker_num=2]
[marker_val=219, len=67, data=\x01\x09\x09\x09\x0c\x0b\x0c\x18\x0d\x0d\x182!\x1c!22222222222222222222222222222222222222222222222222, marker_num=3]
[marker_val=192, len=17, data=\x08\x05\x00\x03\xc0\x03\x01"\x00\x02\x11\x01\x03\x11\x01, marker_num=4]
$ cat jpeg.log
#separator \x09
#set_separator	,
#empty_field	(empty)
#unset_field	-
#path	jpeg
#open	2019-11-27-08-23-56
#fields	ts	id	total_bytes	width	height	jfif_major	jfif_minor	comment
#types	time	string	count	count	count	count	count	string
1100903355.573238	FxUtSi4RIZf03k0sFd	8281	512	512	1	1	Created with The GIMP
1100903355.580655	FKuUQ14DO6SOTBbaB5	9045	500	89	1	1	Created with The GIMP
1100903360.932707	FC536m3fh036oWUd3i	8963	180	240	1	1	Created with The GIMP
1100903360.939152	Fqu89k3QfZCvvvZN0g	10730	180	240	1	1	Created with The GIMP
1100903365.003584	FqMaUw18GBKJ7r5oca	191515	960	1280	1	1	Created with The GIMP
#close	2019-11-27-08-23-56
```

Enjoy!

## License:

This application(s) is/are covered by the Creative Commons BY-SA license.