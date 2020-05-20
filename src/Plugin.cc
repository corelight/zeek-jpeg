
#include "Plugin.h"
#include "file_analysis/Component.h"
#include "JPEG.h"

namespace plugin { namespace Zeek_JPEG { Plugin plugin; } }

using namespace plugin::Zeek_JPEG;

plugin::Configuration Plugin::Configure()
    {
    AddComponent(new ::file_analysis::Component("JPEG", ::file_analysis::JPEG::Instantiate));
    plugin::Configuration config;
    config.name = "Zeek::JPEG";
    config.description = "A Zeek JPEG File Analyzer";
    config.version.major = 0;
    config.version.minor = 1;
    config.version.patch = 0;
    return config;
    }
