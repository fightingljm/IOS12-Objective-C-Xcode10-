//
//  ViewController.m
//  UILabel的使用
//
//  Created by 刘金萌 on 2019/8/15.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 50, 250, 200)];
    
    label.text = @"身材修长的 \n写代码的小仙女🧚‍♀️ \n老长老长了 \n长的一行显示不下";
    label.font = [UIFont systemFontOfSize:20];
    label.textColor = [UIColor redColor];
    label.numberOfLines = 0;
    
    [self.view addSubview:label];
    
}


@end
