//
//  HFSettingTableViewCell.h
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/15.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class HFSettingItem;
@interface HFSettingTableViewCell : UITableViewCell
+ (instancetype)cellwithTableView:(UITableView*)tableview;
@property (nonatomic, strong) HFSettingItem* item;
@end

NS_ASSUME_NONNULL_END
