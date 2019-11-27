
#include "Plugin.h"
#include "JPEG.h"

namespace plugin { namespace FileAnalyzers_JPEG { Plugin plugin; } }

using namespace plugin::FileAnalyzers_JPEG;

plugin::Configuration Plugin::Configure()
	{
    AddComponent(new ::file_analysis::Component("JPEG", ::file_analysis::JPEG::Instantiate));
	plugin::Configuration config;
	config.name = "FileAnalyzers::JPEG";
	config.description = "JPEG File Analyzer";
	config.version.major = 0;
	config.version.minor = 1;
	config.version.patch = 0;
	return config;
	}
