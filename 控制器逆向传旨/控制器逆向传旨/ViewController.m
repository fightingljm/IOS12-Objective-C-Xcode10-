//
//  ViewController.m
//  控制器逆向传旨
//
//  Created by 刘金萌 on 2019/8/29.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"
#import "HuangshangViewController.h"

//@interface ViewController ()<passValueProtocol>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 1.监听通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getInfo:) name:@"passValue" object:nil];
}

// 3.处理通知
-(void)getInfo:(NSNotification *)noti {
    self.resultLabel.text = noti.userInfo[@"info"];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    HuangshangViewController *huangshangVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"huangshang"];
    
    // 让当前控制器成为代理
    // huangshangVC.delegate = self;
    
    // huangshangVC.passValueBlock = ^(NSString * _Nonnull info) {
    //     self.resultLabel.text = info;
    // };
    
    [self presentViewController:huangshangVC animated:YES completion:nil];
    
}

// MARK:- 遵守协议，实现方法
//- (void)passValue:(NSString *)info {
//    self.resultLabel.text = info;
//}

@end
