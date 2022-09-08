#import "NativeRevolutionPlugin.h"
#if __has_include(<native_revolution/native_revolution-Swift.h>)
#import <native_revolution/native_revolution-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "native_revolution-Swift.h"
#endif

@implementation NativeRevolutionPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNativeRevolutionPlugin registerWithRegistrar:registrar];
}
@end
