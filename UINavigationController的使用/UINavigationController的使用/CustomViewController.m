//
//  CustomViewController.m
//  UINavigationController的使用
//
//  Created by 刘金萌 on 2019/8/30.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController()

@end

@implementation CustomViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    viewController.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    // 重写方法的时候最后要调用super
    [super pushViewController:viewController animated:animated];
}

@end
