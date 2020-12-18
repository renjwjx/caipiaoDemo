//
//  HFArenaViewController.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/17.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFArenaViewController.h"

@interface HFArenaViewController ()

@end

@implementation HFArenaViewController

- (void)loadView{
    UIImageView *bgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"NLArenaBackground"]];
    bgView.frame = [UIScreen mainScreen].bounds;
    bgView.userInteractionEnabled = YES;
    self.view = bgView;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"test";

    UISegmentedControl *segControl = [[UISegmentedControl alloc] initWithItems:@[@"足球", @"篮球"]];
    self.navigationItem.titleView = segControl;
    [segControl setTitleTextAttributes:@{
                            NSFontAttributeName : [UIFont systemFontOfSize:16],
                            NSForegroundColorAttributeName: [UIColor whiteColor],
                            }
                            forState:UIControlStateNormal];
    
    [segControl setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:(UIControlStateNormal) barMetrics:(UIBarMetricsDefault)];
    [segControl setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:(UIControlStateSelected) barMetrics:(UIBarMetricsDefault)];

    segControl.tintColor = [UIColor colorWithRed:0 green:142/255.0f blue:143/255.0f alpha:1];

    // TODO: 调整尺寸
    [segControl sizeToFit];

    segControl.selectedSegmentIndex = 0;
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
