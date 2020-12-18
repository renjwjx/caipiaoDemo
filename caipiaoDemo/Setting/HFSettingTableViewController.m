//
//  HFSettingTableViewController.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/13.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFSettingTableViewController.h"
#import "HFScoreViewController.h"

@interface HFSettingTableViewController ()

@end

@implementation HFSettingTableViewController
- (void)setupGroup0{
    
    // 第0组
    HFSettingArrowItem *item = [HFSettingArrowItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用税换码"];
//    item.desVc = [UIViewController class];
    
    // 循环引用: 你那我我拿着你大家都不能释放
    // block会对代码块里面的强制针强引用
    
//    __weak HFSettingTableViewController *weakSelf = self;
    // typeof(x) 动态计算x的类型
    
//    int a = 10;
//    typeof(1) b = 10;
//    NSLog(@"b = %d a = %d",b, a);
    __weak typeof(self) weakSelf = self;
    
    item.operation = ^(NSIndexPath *indexPath){
        UIViewController *vc =  [[UIViewController alloc] init];
        vc.title = [NSString stringWithFormat:@"dadfad %ld", indexPath.row];
        vc.view.backgroundColor = [UIColor redColor];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    
    // 创建组模型
    HFSettingGroup *group = [HFSettingGroup groupWithItems:@[item]];
    group.headerTitle = @"123";
    group.footerTitle = @"qeqrere";
    
    // 添加到总数组中
    [self.groups addObject:group];
}

- (void)setupGroup1{
    
    // 第1组
    HFSettingArrowItem *item1 = [HFSettingArrowItem itemWithImage:[UIImage imageNamed:@"MorePush"] title:@"比赛比分"];
    item1.desVc = [HFScoreViewController class];
    
    HFSettingSwitchItem *item2 = [HFSettingSwitchItem itemWithImage:[UIImage imageNamed:@"handShake"] title:@"使用摇一摇机选"];
    item2.open = YES;
    
    HFSettingItem *item3 = [HFSettingSwitchItem itemWithImage:[UIImage imageNamed:@"sound_Effect"] title:@"声音效果"];
   
    HFSettingItem *item4 = [HFSettingSwitchItem itemWithImage:[UIImage imageNamed:@"More_LotteryRecommend"] title:@"购彩小助手"];
    // 创建组模型
    HFSettingGroup *group = [HFSettingGroup groupWithItems:@[item1, item2, item3, item4]];
    group.headerTitle = @"hah";
    group.footerTitle = @"qweeiwieweiie";
    
    // 添加到总数组中
    [self.groups addObject:group];
}
- (void)setupGroup2{
    // 第2组
    HFSettingItem *item1 = [HFSettingArrowItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"检查新版本"];
    item1.operation = ^(NSIndexPath *indexPath){
        [UIAlertController alertControllerWithTitle:@"Caipiao" message:@"没有新版本" preferredStyle:(UIAlertControllerStyleAlert)];
    };
    
    HFSettingItem *item2 = [HFSettingArrowItem itemWithImage:[UIImage imageNamed:@"MoreShare"] title:@"分享"];
    
    HFSettingItem *item3 = [HFSettingArrowItem itemWithImage:[UIImage imageNamed:@"MoreNetease"] title:@"产品推荐"];
    
    HFSettingItem *item4 = [HFSettingArrowItem itemWithImage:[UIImage imageNamed:@"MoreAbout"] title:@"关于"];
    // 创建组模型
    HFSettingGroup *group = [HFSettingGroup groupWithItems:@[item1, item2, item3, item4]];
    
    group.headerTitle = @"hah13414";
    group.footerTitle = @"qweeiodooddo";
    // 添加到总数组中
    [self.groups addObject:group];
}

- (void)viewDidLoad {
    [super viewDidLoad];
        
    [self setupGroup0];
    [self setupGroup1];
    [self setupGroup2];

}



#pragma mark - Table view data source

@end
