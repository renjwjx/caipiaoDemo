//
//  HFPopMenuView.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/16.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFPopMenuView.h"

@implementation HFPopMenuView

- (IBAction)closeBtn:(id)sender
{
    NSLog(@"close button");
    if ([self.delegate respondsToSelector:@selector(closeBtnClicked:)])
    {
        [self.delegate closeBtnClicked: self];
    }
}

+ (instancetype)showPopMenuView
{
    HFPopMenuView* pop = [[NSBundle mainBundle] loadNibNamed:@"HFPopMenu" owner:nil options:nil][0];
    pop.center = [UIApplication sharedApplication].keyWindow.center;
    
    [[UIApplication sharedApplication].keyWindow addSubview:pop];
    return pop;
}

-(void)hiddenPopMenuWithCompletion:(closeCompletion)completion{
    
    [UIView animateWithDuration:2 animations:^{
        self.transform = CGAffineTransformMakeScale(0.1, 0.1);
        self.center = CGPointMake(50, 50);
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
        completion(5);
    }];
}

@end
