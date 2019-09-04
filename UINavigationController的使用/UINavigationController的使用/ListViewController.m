//
//  ListViewController.m
//  UINavigationController的使用
//
//  Created by 刘金萌 on 2019/8/30.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ListViewController.h"
#import "ItemViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithTitle:@"Item" style:UIBarButtonItemStylePlain target:self action:@selector(rightClick:)];
    
    self.navigationItem.rightBarButtonItem = right;
    
    UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(leftClick:)];
    // UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@""] style:UIBarButtonItemStylePlain target:self action:@selector(leftClick:)];
    
    self.navigationItem.leftBarButtonItem = left;
    
    self.navigationItem.title = @"列表";
}

-(void)rightClick:(UIBarButtonItem *)right {
    ItemViewController *itemVc = [[ItemViewController alloc] init];
    
    [self.navigationController pushViewController:itemVc animated:YES];
}

-(void)leftClick:(UIBarButtonItem *)right {
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
