//
//  HFCoverView.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/16.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFCoverView.h"

@implementation HFCoverView

+ (void)show
{
    HFCoverView* coverView = [[HFCoverView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    coverView.backgroundColor = [UIColor blackColor];
    coverView.alpha = 0.5;
    coverView.tag = 10000;
//    coverView.userInteractionEnabled = YES;
    [[UIApplication sharedApplication].delegate.window addSubview:coverView];
}

+ (void)hide
{
    [[[UIApplication sharedApplication].delegate.window viewWithTag:10000] removeFromSuperview];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [HFCoverView hide];
    NSLog(@"touchesBegan;");
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
