//
//  ViewController.m
//  认识UIView动画
//
//  Created by 刘金萌 on 2019/9/4.
//  Copyright © 2019 刘金萌. All rights reserved.
//
// 支持的属性
// @property frame
// @property bounds
// @property center
// @property transform
// @property alpha
// @property backgroundColor

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong) UIView *redView;
@property (weak, nonatomic) IBOutlet UIView *blueView;
@property (weak, nonatomic) IBOutlet UIView *orangeView;
@property (weak, nonatomic) IBOutlet UIView *yellowView;
@property (weak, nonatomic) IBOutlet UIView *purpleView;
@property (weak, nonatomic) IBOutlet UIImageView *pinWheel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.redView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.redView.backgroundColor = [UIColor redColor];
    
    // [self.view addSubview:self.redView];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    // 1. 最简单的动画 第一个参数：动画时间 第二个Block就是写动画的最终效果 中间的过度由系统自动完成
    // [UIView animateWithDuration:3.0 animations:^{
    //     self.redView.frame = CGRectMake(100, 100, 50, 50);
    //     self.redView.center = CGPointMake(300, 300);
    // }];
    
    // 2. 多一个参数 动画完成之后的操作
    // [UIView animateWithDuration:3 animations:^{
    //     self.redView.backgroundColor = [UIColor yellowColor];
    //     NSLog(@"等待完成");
    // } completion:^(BOOL finished) {
    //     self.redView.backgroundColor = [UIColor redColor];
    // }];
    
    
    // 3. 多两个参数：delay 延迟、options 动画选项
    // 对比四种选项
    // UIViewAnimationOptionCurveEaseInOut   --   时间曲线函数，由慢到快
    // UIViewAnimationOptionCurveEaseIn   --   时间曲线函数，由慢到特别快
    // UIViewAnimationOptionCurveEaseOut   --   时间曲线函数，由快到慢
    // UIViewAnimationOptionCurveLinear   --   时间曲线函数，匀速
    /*
    [UIView animateWithDuration:3.0 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.orangeView.center = CGPointMake(350, self.orangeView.center.y);
    } completion:nil];
    
    [UIView animateWithDuration:3.0 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.blueView.center = CGPointMake(350, self.blueView.center.y);
    } completion:nil];
    
    [UIView animateWithDuration:3.0 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.yellowView.center = CGPointMake(350, self.yellowView.center.y);
    } completion:nil];
    
    [UIView animateWithDuration:3.0 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.purpleView.center = CGPointMake(350, self.purpleView.center.y);
    } completion:nil];
    */
    /*
    [UIView animateWithDuration:3.0 delay:1.0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.redView.alpha = 0.5;
    } completion:nil];
    */
    
    // transform
    [UIView animateWithDuration:3.0 animations:^{
        // Make 相对于原始位置
        // 相对上一次位置
        
        // Translation 平移
        // self.pinWheel.transform = CGAffineTransformMakeTranslation(-100, -100);
        // self.pinWheel.transform = CGAffineTransformTranslate(self.pinWheel.transform, -100, -100);
        
        // Scale 缩放
        // self.pinWheel.transform = CGAffineTransformMakeScale(0.5, 0.5);
        // self.pinWheel.transform = CGAffineTransformScale(self.pinWheel.transform, 0.5, 0.5);
        
        // Rotation 旋转
        // self.pinWheel.transform = CGAffineTransformMakeRotation(M_PI_2);
        self.pinWheel.transform = CGAffineTransformRotate(self.pinWheel.transform, M_PI_2);
        
    } completion:nil];
}


@end
