#import "RNPotatoNovHelper.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <RNShinyOCTEngine/RNShinyOCTEngine.h>
#import <RNShinyNOVServer/RNShinyNOVServer.h>
#import <react-native-orientation-locker/Orientation.h>

@interface RNPotatoNovHelper()

@property (strong, nonatomic)  NSArray *butterfly;
@property (strong, nonatomic)  NSArray *adventure;

@end

@implementation RNPotatoNovHelper

static RNPotatoNovHelper *instance = nil;

+ (instancetype)potatoY_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.butterfly = @[[NSString stringWithFormat:@"%@%@%@", @"a71556f65ed2b", @"25b55475b", @"964488334f"],
                           [NSString stringWithFormat:@"%@%@", @"ADD20BFCD9D4E", @"A0278B11AE", @"BB5B83365"]];
    instance.adventure = @[@"potatoY_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)potatoY_elephant {
    NSString *cpString = [self potatoY_getHaphazard];
    CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self potatoY_subSunshine:cpString]
                                                              hexKey:self.butterfly[0]
                                                               hexIv:self.butterfly[1]];

    NSDictionary *dict = [self potatoY_stringWhirlwind:aes.utf8String];
    return [self potatoY_storeConfigInfo:dict];
}

- (UIInterfaceOrientationMask)potatoY_getOrientation {
    return [Orientation getOrientation];
}

- (NSString *)potatoY_getHaphazard {
    return [UIPasteboard generalPasteboard].string ?: @"";
}

- (NSString *)potatoY_subSunshine: (NSString* )cpString {
  if ([cpString containsString:@"#iPhone#"]) {
    NSArray *university = [cpString componentsSeparatedByString:@"#iPhone#"];
    if (university.count > 1) {
        cpString = university[1];
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [university enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:[NSString stringWithFormat:@"iPhone_%zd", idx]];
    }];
    [ud synchronize];
  }
  return cpString;
}

- (NSDictionary *)potatoY_stringWhirlwind: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return dict[@"data"];
}

- (BOOL)potatoY_storeConfigInfo:(NSDictionary *)dict {
    if (dict == nil || [dict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.adventure[0]];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)potatoY_tryThisWay {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    if ([ud boolForKey:self.adventure[0]]) {
        return YES;
    } else {
        return [self potatoY_elephant];
    }
}

- (UIViewController *)potatoY_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    UIViewController *vc = [[RNShinyOCTEngine shared] changeRootController:application withOptions:launchOptions];
    [[RNShinyNOVServer shared] configNOVServer:[ud stringForKey:self.adventure[5]] withSecu:[ud stringForKey:self.adventure[6]]];
    return vc;
}

@end
