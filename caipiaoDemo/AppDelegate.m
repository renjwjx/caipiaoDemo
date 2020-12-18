//
//  AppDelegate.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/14.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "AppDelegate.h"
#import "HFUITabBarController.h"


#import "HFRootVCManager.h"

@interface AppDelegate ()

@end
    
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UIWindow* rootWin = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    rootWin.rootViewController = [[HFRootVCManager sharedInstance] chooseRootVC];
    
    rootWin.rootViewController.view.backgroundColor = [UIColor blueColor];
    rootWin.backgroundColor = [UIColor redColor];
    [rootWin makeKeyAndVisible];
    self.window = rootWin;
    
    return YES;
}


@end
