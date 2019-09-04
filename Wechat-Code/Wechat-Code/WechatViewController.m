//
//  WechatViewController.m
//  Wechat-Code
//
//  Created by 刘金萌 on 2019/8/31.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "WechatViewController.h"

@interface WechatViewController ()

@end

@implementation WechatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.tabBarItem.badgeValue = @"99+";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
