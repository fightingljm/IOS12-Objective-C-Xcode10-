//
//  ViewController.m
//  UIAlertController的使用
//
//  Created by 刘金萌 on 2019/8/29.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)showAlert:(id)sender;
- (IBAction)showActionSheet:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)showAlert:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"天气变凉，注意防寒❤️" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"已经裹紧自己的小身板🧚‍♀️🧚‍♀️🧚‍♀️");
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"不用，谢谢" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"已经有足够的肉肉抵抗严寒🥳🥳🥳");
    }];
    
    [alert addAction:ok];
    
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)showActionSheet:(id)sender {
    
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:@"设置头像" message:@"选择方式" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *one = [UIAlertAction actionWithTitle:@"相册" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    UIAlertAction *two = [UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    UIAlertAction *three = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    [actionSheet addAction:one];

    [actionSheet addAction:two];
    
    [actionSheet addAction:three];
    
    [self presentViewController:actionSheet animated:YES completion:nil];
}

@end
