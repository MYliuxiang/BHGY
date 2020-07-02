//
//  AppDelegate.m
//  BHGY
//
//  Created by liuxiang on 2020/7/2.
//  Copyright © 2020 liuxiang. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    UIScreen.main.bounds
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[MainTabBarController alloc] init];

       
    [self.window makeKeyAndVisible];
    return YES;
}




@end
