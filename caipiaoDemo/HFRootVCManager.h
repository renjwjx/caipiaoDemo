//
//  HFRootVCManager.h
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/18.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface HFRootVCManager : NSObject
+ (instancetype)sharedInstance;
- (UIViewController*)chooseRootVC;
- (void)switchMainVC;
@end

NS_ASSUME_NONNULL_END
