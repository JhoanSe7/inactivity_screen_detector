#import "InactivityScreenDetectorPlugin.h"
#if __has_include(<inactivity_screen_detector/inactivity_screen_detector-Swift.h>)
#import <inactivity_screen_detector/inactivity_screen_detector-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "inactivity_screen_detector-Swift.h"
#endif

@implementation InactivityScreenDetectorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftInactivityScreenDetectorPlugin registerWithRegistrar:registrar];
}
@end
