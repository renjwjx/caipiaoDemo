//
//  HFMyLotteryViewController.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/13.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFMyLotteryViewController.h"
#import "HFSettingTableViewController.h"

@interface HFMyLotteryViewController ()
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation HFMyLotteryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIButton *leftButton = [[UIButton alloc] init];
    [leftButton setImage:[UIImage imageNamed:@"FBMM_Barbutton"] forState:UIControlStateNormal];
    [leftButton setTitle:@"客服" forState:UIControlStateNormal];
    
    [leftButton sizeToFit];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"Mylottery_config"] style:(UIBarButtonItemStylePlain) target:self action:@selector(configBtnClicked:)];
    
    UIImage* btnBackground = [UIImage imageNamed:@"RedButton"];
    btnBackground = [btnBackground stretchableImageWithLeftCapWidth:btnBackground.size.width * 0.5f topCapHeight:btnBackground.size.height * 0.5f];
    [self.loginBtn setBackgroundImage:btnBackground forState:(UIControlStateNormal)];
    
}

- (void)configBtnClicked:(UIButton*) btn
{
    [self.navigationController pushViewController:[[HFSettingTableViewController alloc] init] animated:YES];
}

@end
