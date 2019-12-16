
# A Zeek JPEG File Analyzer Package

This package implements:

- JPEG

## TLDR!

Use your trusty zkg, and you can install like so:

```
% zkg autoconfig
% zkg install https://github.com/corelight/zeek-jpeg
```

Now in any Zeek script, just load the plugin and it "just works":

```
@load Zeek/JPEG
```

## Building and Installing

This plugin can be built with:

```
./configure --zeek-dist=/your/zeek/src/dir
make
sudo make install
```

If you have zkg and you have already ran...

```
zkg autoconfig
```

... then you can install this package as so:

```
sudo zkg install https://github.com/corelight/zeek-jpeg
```

## Using JPEG

Once installed, this plugin can be loaded with the following Zeek script:

```
@load Zeek/JPEG

event file_jpeg_marker(f: fa_file, m: Zeek::JPEGMarker)
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

Copyright (c) 2019, Corelight, Inc. All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

(1) Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.

(2) Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in
    the documentation and/or other materials provided with the
    distribution.

(3) Neither the name of Corelight nor the names of any contributors
    may be used to endorse or promote products derived from this
    software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
