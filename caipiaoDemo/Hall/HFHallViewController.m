//
//  HFHallViewController.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/16.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFHallViewController.h"
#import "HFCoverView.h"
#import "HFPopMenuView.h"

@interface HFHallViewController () <HFPopMenuViewDelegate>

@end

@implementation HFHallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"活动" style:(UIBarButtonItemStylePlain) target:self action:@selector(leftBarClick:)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"CS50_activity_image"] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)] style:(UIBarButtonItemStylePlain) target:self action:@selector(leftBarClick:)];
    self.title = @"购彩大厅";
}

- (void)closeBtnClicked:(HFPopMenuView*)popMenu
{
    [popMenu hiddenPopMenuWithCompletion:^(NSInteger num)  {
        [HFCoverView hide];
        NSLog(@"%ld", num);
    }];
}


- (void)leftBarClick:(UIButton*)barBtn {
    NSLog(@"leftBarClick");
    [HFCoverView show];
    HFPopMenuView* popMenu = [HFPopMenuView showPopMenuView];
    popMenu.delegate = self;
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
