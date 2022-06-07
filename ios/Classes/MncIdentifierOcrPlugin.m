#import "MncIdentifierOcrPlugin.h"
#if __has_include(<mnc_identifier_ocr/mnc_identifier_ocr-Swift.h>)
#import <mnc_identifier_ocr/mnc_identifier_ocr-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mnc_identifier_ocr-Swift.h"
#endif

@implementation MncIdentifierOcrPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMncIdentifierOcrPlugin registerWithRegistrar:registrar];
}
@end
