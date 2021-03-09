#import "FacebookToolAnalyticsPlugin.h"
#if __has_include(<facebook_tool_analytics/facebook_tool_analytics-Swift.h>)
#import <facebook_tool_analytics/facebook_tool_analytics-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "facebook_tool_analytics-Swift.h"
#endif

@implementation FacebookToolAnalyticsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFacebookToolAnalyticsPlugin registerWithRegistrar:registrar];
}
@end
