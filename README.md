
#FileAnalyzers::JPEG

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

Enjoy!

## License:

This application(s) is/are covered by the Creative Commons BY-SA license.