//
//  ViewController.m
//  UITextField的使用
//
//  Created by 刘金萌 on 2019/8/15.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)textChange:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *unametf;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (IBAction)textChange:(id)sender {
    UITextField *tf = (UITextField *)sender;
    NSLog(@"%@",tf.text);
}

// 触摸UIView就会调用该方法
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    // 结束编辑
    // [self.view endEditing:YES];
    
    // 失去第一响应者
    [self.unametf resignFirstResponder];
}

@end
