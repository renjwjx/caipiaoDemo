//
//  HFDiscoverTableViewController.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/13.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFDiscoverTableViewController.h"

@interface HFDiscoverTableViewController ()

@end

@implementation HFDiscoverTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
//     self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//     self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    // TODO:  设置返回必须在前面的VC里面设置 Back
    UIBarButtonItem* backItem = [[UIBarButtonItem alloc] initWithTitle:@"返回-发现" style:(UIBarButtonItemStylePlain) target:nil action:nil];

    self.navigationItem.backBarButtonItem = backItem;
    //隐藏底部bar
//    segue.destinationViewController.hidesBottomBarWhenPushed = YES;
}

#pragma mark - Table view data source

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    cell.transform = CGAffineTransformMakeTranslation(self.view.frame.size.width, 0);
    
    [UIView animateWithDuration:0.5f animations:^{
        cell.transform = CGAffineTransformIdentity;
    }];
    
}
@end
