//
//  ViewController.m
//  认识导航控制器
//
//  Created by 刘金萌 on 2019/8/30.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)leftBarBtnClick:(id)sender;
- (IBAction)rightBarBtnClick:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // self.navigationItem.title = @"首页";
    
    // UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"test"]];
    // self.navigationItem.titleView = imgView;
    
    // self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:imgView]
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UIViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"abc"];
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)leftBarBtnClick:(id)sender {
    NSLog(@"左护卫防御🔪");
}

- (IBAction)rightBarBtnClick:(id)sender {
    NSLog(@"右护卫攻击☁️");
}

@end
