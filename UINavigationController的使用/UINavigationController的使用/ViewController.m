//
//  ViewController.m
//  UINavigationController的使用
//
//  Created by 刘金萌 on 2019/8/30.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"
#import "ListViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithTitle:@"列表" style:UIBarButtonItemStylePlain target:self action:@selector(rightClick:)];
    
    self.navigationItem.rightBarButtonItem = right;
}

-(void)rightClick:(UIBarButtonItem *)right{
    
    ListViewController *listVc = [[ListViewController alloc] init];
    
    [self.navigationController pushViewController:listVc animated:YES];
    
}

@end
