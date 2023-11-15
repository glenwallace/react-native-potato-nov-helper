//
//  AppDelegate+Nov.m
//  SlidingWizard
//
//  Created by zack on 11/15/23.
//

#import "AppDelegate+Nov.h"
#import <react-native-orientation-locker/Orientation.h>

@implementation AppDelegate (Nov)

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window {
  return [Orientation getOrientation];
}

@end
