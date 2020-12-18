//
//  HFBaseTableViewController.h
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/15.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HFSettingGroup.h"
#import "HFSettingTableViewCell.h"
#import "HFSettingArrowItem.h"
#import "HFSettingSwitchItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface HFBaseTableViewController : UITableViewController
@property (strong, nonatomic) NSMutableArray<HFSettingGroup*>* groups;
@end

NS_ASSUME_NONNULL_END
