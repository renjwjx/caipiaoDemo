//
//  HFRootVCManager.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/18.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFRootVCManager.h"
#import "HFNewFeatureCollectionViewController.h"
#import "HFHallViewController.h"
#import "HFNavigationViewController.h"
#import "HFArenaNavigationController.h"
#import "HFArenaViewController.h"
#import "HFDiscoverTableViewController.h"
#import "HFMyLotteryViewController.h"
#import "HFNewFeatureCollectionViewController.h"

@implementation HFRootVCManager

+ (instancetype)sharedInstance
{
    static HFRootVCManager* instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[HFRootVCManager alloc] init];
    });
    return instance;
}

- (UIViewController*)chooseRootVC
{
    UIViewController* vc = nil;
    
    vc = [[HFNewFeatureCollectionViewController alloc] init];
    
    return vc; 
}

- (void)switchMainVC
{
    [UIApplication sharedApplication].delegate.window.rootViewController = [self mainVC];
}

- (UIViewController*)mainVC
{
    //Hall
    HFHallViewController* hallVC = [[HFHallViewController alloc] init];
    hallVC.view.backgroundColor = [UIColor blueColor];
    hallVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"购彩大厅" image:[[UIImage imageNamed:@"TabBar_Hall_new"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"TabBar_Hall_selected_new"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    hallVC.tabBarItem.badgeValue = @"3";
    //调整图片位置
    hallVC.tabBarItem.imageInsets = UIEdgeInsetsMake(10, 0, -6, 0);
    
    UINavigationController* navHall = [[HFNavigationViewController alloc] initWithRootViewController:hallVC];
    
    //Arena
    HFArenaViewController* arenaVC = [[HFArenaViewController alloc] init];
    arenaVC.tabBarItem.image = [[UIImage imageNamed:@"TabBar_Arena_new"] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    arenaVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"TabBar_Arena_selected_new"] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    arenaVC.tabBarItem.title = @"竞技场";
    arenaVC.tabBarItem.imageInsets = UIEdgeInsetsMake(10, 0, -6, 0);
    
    HFArenaNavigationController* nav1Arena = [[HFArenaNavigationController alloc] initWithRootViewController:arenaVC];
    
    //Dioscover
    //    HFDiscoverTableViewController* discoverVC = [[HFDiscoverTableViewController alloc] init];
    //load from storyBoard
    UIStoryboard* discoverStory = [UIStoryboard storyboardWithName:@"Discover" bundle:nil];
    HFDiscoverTableViewController* discoverVC = [discoverStory instantiateInitialViewController];
    
    discoverVC.tabBarItem.image = [[UIImage imageNamed:@"TabBar_Discovery_new"] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    discoverVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"TabBar_Discovery_selected_new"] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    discoverVC.title = @"发现";
    discoverVC.tabBarItem.imageInsets = UIEdgeInsetsMake(10, 0, -6, 0);
    
    HFNavigationViewController* navDiscover = [[HFNavigationViewController alloc] initWithRootViewController:discoverVC];
    
    //Setting
    HFMyLotteryViewController* settingVC = [[HFMyLotteryViewController alloc] init];
    settingVC.view.backgroundColor = [UIColor blueColor];
    settingVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的彩票" image:[[UIImage imageNamed:@"TabBar_MyLottery_new"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"TabBar_MyLottery_selected_new"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    settingVC.tabBarItem.badgeValue = @"3";
    //调整图片位置
    settingVC.tabBarItem.imageInsets = UIEdgeInsetsMake(10, 0, -6, 0);
    
    UINavigationController* navSetting = [[HFNavigationViewController alloc] initWithRootViewController:settingVC];
    
    UITabBarController* tbController = [[UITabBarController alloc] init];
    [tbController addChildViewController:navHall];
    [tbController addChildViewController:nav1Arena];
    [tbController addChildViewController:navDiscover];
    [tbController addChildViewController:navSetting];
    
    tbController.selectedIndex = 3;
    return tbController;
}

@end
