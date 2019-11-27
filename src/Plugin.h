
#ifndef BRO_PLUGIN_FILEANALYZERS_JPEG
#define BRO_PLUGIN_FILEANALYZERS_JPEG

#include <plugin/Plugin.h>

namespace plugin {
namespace FileAnalyzers_JPEG {

class Plugin : public ::plugin::Plugin
{
protected:
	// Overridden from plugin::Plugin.
	plugin::Configuration Configure() override;
};

extern Plugin plugin;

}
}

#endif
