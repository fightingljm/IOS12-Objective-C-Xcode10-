//
//  RootTabBarController.m
//  Wechat-Code
//
//  Created by 刘金萌 on 2019/8/31.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "RootTabBarController.h"
#import "WechatViewController.h"
#import "ContactsViewController.h"
#import "DiscoverViewController.h"
#import "MeViewController.h"

@implementation RootTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildWithVCName:@"WechatViewController" title:@"微信" image:@"tabbar_mainframe" selectedImage:@"tabbar_mainframeHL"];
    [self addChildWithVCName:@"ContactsViewController" title:@"联系人" image:@"tabbar_contacts" selectedImage:@"tabbar_contactsHL"];
    [self addChildWithVCName:@"DiscoverViewController" title:@"发现" image:@"tabbar_discover" selectedImage:@"tabbar_discoverHL"];
    [self addChildWithVCName:@"MeViewController" title:@"我" image:@"tabbar_me" selectedImage:@"tabbar_meHL"];
    
}

-(void) addChildWithVCName:(NSString *)vcName title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage {
    
    // 1.创建控制器
    Class class = NSClassFromString(vcName);
    
    UIViewController *wechat = [[class alloc] init];
    
    // 2.设置属性
    wechat.navigationItem.title = title;
    
    wechat.tabBarItem.title = title;
    wechat.tabBarItem.image = [UIImage imageNamed:image];
    wechat.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    [wechat.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:34/255.0 green:172/255.0 blue:37/255.0 alpha:1.0]} forState:UIControlStateHighlighted];
    
    // 3.创建导航控制器
    UINavigationController *navVc = [[UINavigationController alloc] initWithRootViewController:wechat];
    navVc.navigationBar.barTintColor = [UIColor colorWithRed:15/255.0 green:15/255.0 blue:15/255.0 alpha:1.0];
    navVc.navigationBar.tintColor = [UIColor whiteColor];
    
    [navVc.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    
    // 4.添加到标签栏控制器
    [self addChildViewController:navVc];
    
}

@end
