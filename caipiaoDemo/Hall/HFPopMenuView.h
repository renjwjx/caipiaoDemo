//
//  HFPopMenuView.h
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/16.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class HFPopMenuView;
@protocol HFPopMenuViewDelegate <NSObject>
- (void)closeBtnClicked:(HFPopMenuView*)popMenu;
@end

typedef void(^closeCompletion)(NSInteger);

@interface HFPopMenuView : UIView
@property (strong, nonatomic) id<HFPopMenuViewDelegate> delegate;
+ (instancetype)showPopMenuView;
- (void)hiddenPopMenuWithCompletion:(closeCompletion) completion;
@end

NS_ASSUME_NONNULL_END
