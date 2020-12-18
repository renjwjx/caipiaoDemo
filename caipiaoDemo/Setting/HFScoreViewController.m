//
//  HFScoreViewController.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/16.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFScoreViewController.h"


@interface HFScoreViewController ()

@end

@implementation HFScoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupGroup0];
    [self setupGroup1];
    [self setupGroup2];
    [self setupGroup1];
    [self setupGroup0];
    [self setupGroup2];
    [self setupGroup0];
    [self setupGroup1];
    [self setupGroup2];
    [self setupGroup1];
    [self setupGroup2];
    [self setupGroup1];
    [self setupGroup2];
    [self setupGroup1];
    [self setupGroup2];
    [self setupGroup1];
}

- (void)setupGroup0{
    
    // 第0组
    HFSettingSwitchItem *item = [HFSettingSwitchItem itemWithTitle:@"关注比赛"];
    HFSettingGroup *group = [HFSettingGroup groupWithItems:@[item]];
    group.footerTitle = @"footer";
    group.headerTitle = @"header";
    
    [self.groups addObject:group];
    
}
/**
 *  第1组
 */
- (void)setupGroup1{
    HFSettingItem *item = [HFSettingItem itemWithTitle:@"起始时间"];
    item.subTitle = @"00:00";
    
    HFSettingGroup *group = [HFSettingGroup groupWithItems:@[item]];
    group.headerTitle = @"header";
    group.footerTitle = @"footerTitle";
    
    [self.groups addObject:group];
    
}

- (void)setupGroup2{
    
    // 第0组
    HFSettingItem *item = [HFSettingItem itemWithTitle:@"结束时间"];
    item.subTitle = @"23:61";
   
    __weak typeof(self) weakSelf = self;
    
    // 在iOS7以后只要把TextFiled添加到cell 上就能实现自动计算高度,自动调整cell的位置
    item.operation = ^(NSIndexPath *indexPath){
        // 把 UITextField 添加到cell上
        UITableViewCell *cell = [weakSelf.tableView cellForRowAtIndexPath:indexPath];
        UITextField *textFiled = [[UITextField alloc] init];
        [textFiled becomeFirstResponder];
        [cell addSubview:textFiled];
    };

    HFSettingGroup *group = [HFSettingGroup groupWithItems:@[item]];
    
    [self.groups addObject:group];
    
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.view endEditing:YES];
}

@end
