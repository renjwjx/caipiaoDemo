//
//  HFSettingGroup.h
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/13.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class HFSettingItem;

@interface HFSettingGroup : NSObject
@property (nonatomic, strong) NSArray<HFSettingItem*>* items;
@property (nonatomic, strong) NSString* headerTitle;
@property (nonatomic, strong) NSString* footerTitle;

+ (instancetype)groupWithItems: (NSArray<HFSettingItem*> *) items;
@end

NS_ASSUME_NONNULL_END
