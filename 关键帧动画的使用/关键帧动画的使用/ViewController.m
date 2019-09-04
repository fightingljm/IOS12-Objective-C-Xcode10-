//
//  ViewController.m
//  关键帧动画的使用
//
//  Created by 刘金萌 on 2019/9/4.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *leaf;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [UIView animateKeyframesWithDuration:8.0 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeCubic animations:^{
        
        // (90, 200) --- (330, 830)
        // relativeDuration 填写的是系数，真正执行的时间是系数*总时间，比如0.1 持续时间就是8*0.1
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(120, 260);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.1 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(140, 320);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.2 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(160, 380);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.3 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(180, 440);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.4 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(200, 500);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.5 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(220, 560);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.6 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(240, 620);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.7 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(260, 680);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.8 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(280, 740);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.9 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(330, 830);
            self.leaf.transform = CGAffineTransformMakeRotation(M_PI_4);
        }];
    } completion:nil];
    
}

@end
