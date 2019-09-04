//
//  ViewController.m
//  UINavigationController新特性
//
//  Created by 刘金萌 on 2019/8/30.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // self.navigationController.hidesBarsOnTap = YES;    // 点击
    // self.navigationController.hidesBarsOnSwipe = YES;   // 滑动
    // self.navigationController.hidesBarsWhenKeyboardAppears = YES;   // 键盘弹出
    self.navigationController.hidesBarsWhenVerticallyCompact = YES;   // 横屏
}


@end
