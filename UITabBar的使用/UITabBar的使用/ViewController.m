//
//  ViewController.m
//  UITabBar的使用
//
//  Created by 刘金萌 on 2019/8/30.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITabBarDelegate>
@property (weak, nonatomic) IBOutlet UITabBar *tabBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 默认选中
    self.tabBar.selectedItem = self.tabBar.items[0];
    
    
    self.tabBar.barTintColor = [UIColor whiteColor];
    // self.tabBar.tintColor = [UIColor greenColor];
    self.tabBar.tintColor = [UIColor colorWithRed:85/255.0 green:182/255.0 blue:37/255.0 alpha:1.0];
    
    self.tabBar.items[0].badgeValue = @"9";
    self.tabBar.items[1].badgeColor = [UIColor blackColor];
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    
    NSLog(@"%@", item.badgeValue);
    
    // 清除角标
    item.badgeValue = nil;
    
}


@end
