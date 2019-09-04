//
//  CustomTabBarController.m
//  UITabBarController的使用
//
//  Created by 刘金萌 on 2019/8/31.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "CustomTabBarController.h"

@interface CustomTabBarController ()<UITabBarControllerDelegate>

@end

@implementation CustomTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegate = self;
}

// 只能修改tabbar
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    
}

// 可以修改viewcontroller
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    viewController.view.backgroundColor = [UIColor whiteColor];
}

@end
