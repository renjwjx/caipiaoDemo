//
//  HFBuyViewController.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/13.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFBuyViewController.h"

@interface HFBuyViewController ()

@end

@implementation HFBuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *button = [UIButton systemButtonWithImage:[UIImage imageNamed:@"YellowDownArrow"] target:self action:@selector(titleClicked:)];
    [button setTitle:@"全部菜种" forState:(UIControlStateNormal)];
    [button setTintColor:[UIColor whiteColor]];
    self.navigationItem.titleView = button;
//    [self.navigationItem.leftBarButtonItem setBackButtonTitlePositionAdjustment:(UIOffsetMake(0, -20)) forBarMetrics:(UIBarMetricsDefault)];
    
}

- (void)titleClicked:(UIButton*)btn {
    NSLog(@"title clicked");
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
