//
//  ViewController.m
//  UIView动画-登录案例
//
//  Created by 刘金萌 on 2019/9/4.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *passwork;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UIImageView *pinWheel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// 无限旋转
-(void)pinWheelRotate {
    
    [UIView animateWithDuration:1.0 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.pinWheel.transform = CGAffineTransformRotate(self.pinWheel.transform, M_PI_2);
    } completion:^(BOOL finished) {
        [self pinWheelRotate];
    }];
    
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    [self pinWheelRotate];
    
    [UIView animateWithDuration:2.0 animations:^{
        self.username.center = CGPointMake(self.view.center.x, self.username.center.y);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:2.0 animations:^{
            self.passwork.center = CGPointMake(self.view.center.x, self.passwork.center.y);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:2.0 animations:^{
                self.loginBtn.center = CGPointMake(self.view.center.x, 460);
            }];
        }];
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}


@end
