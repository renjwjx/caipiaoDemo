//
//  HFSettingGroup.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/13.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFSettingGroup.h"


@implementation HFSettingGroup

+ (instancetype)groupWithItems:(NSArray<HFSettingItem*> *)items
{
    HFSettingGroup *group = [[HFSettingGroup alloc] init];
    group.items = items;
    return group;
}
@end
