#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface RNPotatoNovHelper : UIResponder

+ (instancetype)potatoY_shared;
- (BOOL)potatoY_tryThisWay;
- (UIInterfaceOrientationMask)potatoY_getOrientation;
- (UIViewController *)potatoY_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
