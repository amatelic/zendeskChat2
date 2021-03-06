#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(ZendeskChat2Plugin, "ZendeskChat2",
           CAP_PLUGIN_METHOD(initialize, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(setVisitorInfo, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(open, CAPPluginReturnPromise);
)
