//
//  HFBaseTableViewController.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/15.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFBaseTableViewController.h"


@interface HFBaseTableViewController ()

@end

@implementation HFBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (NSArray<HFSettingGroup *> *)groups{
    if (!_groups) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.groups count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.groups[section].items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HFSettingTableViewCell *cell = [HFSettingTableViewCell cellwithTableView:tableView];
    
    HFSettingItem* item = self.groups[indexPath.section].items[indexPath.row];
    cell.item = item;

    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return self.groups[section].headerTitle;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    return  self.groups[section].footerTitle;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    HFSettingItem* item = self.groups[indexPath.section].items[indexPath.row];
    
    if (item.operation) {
        item.operation(indexPath);
    }
    if ([item isKindOfClass:[HFSettingArrowItem class]]) {
        HFSettingArrowItem* arrowItem = (HFSettingArrowItem*)item;
        if (arrowItem.desVc) {
            UIViewController* vc = [[arrowItem.desVc alloc] init];
            vc.title = item.title;
            [self.navigationController pushViewController:vc animated:YES];
        }
        
    }

}


@end
