//
//  HFSettingTableViewCell.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/15.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFSettingTableViewCell.h"
#import "HFSettingSwitchItem.h"
#import "HFSettingArrowItem.h"

#define SettingCell_ID @"SettingCell"


@implementation HFSettingTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

+ (instancetype)cellwithTableView:(UITableView*)tableview{
    HFSettingTableViewCell* cell = [tableview dequeueReusableCellWithIdentifier:SettingCell_ID];
    if (cell == nil) {
        cell = [[HFSettingTableViewCell alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:SettingCell_ID];
        NSLog(@"reuse cell");
    }
    return cell;
}

-(void)setItem:(HFSettingItem *)item
{
    _item = item;
    self.imageView.image = item.image;
    self.textLabel.text = item.title;
    self.detailTextLabel.text = item.subTitle;
    
    [self setupRightView];
}

- (void)setupRightView
{
    if ([self.item isKindOfClass:[HFSettingArrowItem class]]) {
        self.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow_right"]];
    } else if ([self.item isKindOfClass:[HFSettingSwitchItem class]]) {
        HFSettingSwitchItem* swItem = (HFSettingSwitchItem*)self.item;
        UISwitch* sw = [[UISwitch alloc] init];
        [sw addTarget:self action:@selector(switchClicked:) forControlEvents:UIControlEventTouchUpInside];
        sw.on = swItem.open;
        self.accessoryView = sw;
    } else {
        self.accessoryView = nil;
    }
}

- (void)switchClicked:(UISwitch*)sw {
    NSLog(@"switch tirgger");
}

@end
