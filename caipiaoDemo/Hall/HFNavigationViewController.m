//
//  HFNavigationViewController.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/16.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFNavigationViewController.h"

@interface HFNavigationViewController ()

@end

@implementation HFNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    [self.navigationBar setBackgroundImage:[[UIImage imageNamed:@"NavBar64"] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)]  forBarMetrics:(UIBarMetricsDefault)];
    
    self.navigationBar.titleTextAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize:36],
                                               NSForegroundColorAttributeName: [UIColor whiteColor]
    };
    
    self.navigationBar.tintColor = [UIColor whiteColor];
    
    // 把返回按钮的文字移除 appearance
//    UIBarButtonItem *item = [UIBarButtonItem appearanceWhenContainedIn:[self class], nil];
//    // Position 位置
//    [item setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -64) forBarMetrics:UIBarMetricsDefault];
//
}

//去掉 push时候的底部 bar button
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if ([self.childViewControllers count] > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}
@end
