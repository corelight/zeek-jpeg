
#include "Plugin.h"

namespace plugin { namespace FileAnalyzers_JPEG { Plugin plugin; } }

using namespace plugin::FileAnalyzers_JPEG;

plugin::Configuration Plugin::Configure()
	{
	plugin::Configuration config;
	config.name = "FileAnalyzers::JPEG";
	config.description = "<Insert description>";
	config.version.major = 0;
	config.version.minor = 1;
	config.version.patch = 0;
	return config;
	}
