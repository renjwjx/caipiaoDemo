//
//  HFSettingItem.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/13.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFSettingItem.h"

@implementation HFSettingItem
+ (instancetype)itemWithImage:(UIImage *)image title:(NSString*)title
{
    // TODO: 子类的初始化重载, 用self
    HFSettingItem* item = [[self alloc] init];
    item.image = image;
    item.title = title;
    return item;
}

+ (instancetype)itemWithTitle:(NSString*)title
{
    return [HFSettingItem itemWithImage:nil title:title];
}

@end
