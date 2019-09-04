//
//  ViewController.m
//  UIView转场动画
//
//  Created by 刘金萌 on 2019/9/4.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *aniView;
@property (weak, nonatomic) UIView *orangeView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *orangeView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    
    orangeView.backgroundColor = [UIColor orangeColor];
    
    [self.aniView addSubview:orangeView];  // 必须添加到视图中
    
    self.orangeView = orangeView;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    /**  transitionWithView
    // UIViewAnimationOptionTransitionFlipFromLeft   翻转
    // UIViewAnimationOptionTransitionCurlUp    翻书
    [UIView transitionWithView:self.view duration:2.0 options:UIViewAnimationOptionTransitionCurlUp animations:^{
        
        // UIView *orangeView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
        // orangeView.backgroundColor = [UIColor orangeColor];
        // [self.aniView addSubview:orangeView];
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        btn.tag = 100;
        [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        
        [self.aniView addSubview:btn];
        
    } completion:nil];
     */
    
    
    [UIView transitionFromView:self.aniView toView:self.orangeView duration:2.0 options:UIViewAnimationOptionTransitionCurlDown completion:nil];
    
}

-(void)btnClick {
    [UIView transitionWithView:self.view duration:2.0 options:UIViewAnimationOptionTransitionCurlDown animations:^{
        
        UIButton *btn = [self.aniView viewWithTag:100];
        [btn removeFromSuperview];
        
    } completion:nil];
}


@end
