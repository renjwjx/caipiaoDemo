//
//  HFArenaNavigationController.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/17.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFArenaNavigationController.h"

@interface HFArenaNavigationController ()

@end

@implementation HFArenaNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+ (void)initialize{
    UINavigationBar* bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[self]];
    UIImage* image = [UIImage imageNamed:@"NLArenaNavBar64"];
    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5f];
    [bar setBackgroundImage:image forBarMetrics:(UIBarMetricsDefault)];
    [bar setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:30],
                                               NSForegroundColorAttributeName: [UIColor whiteColor]}];
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
