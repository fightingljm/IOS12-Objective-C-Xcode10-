//
//  ViewController.m
//  firstPro
//
//  Created by 刘金萌 on 2019/8/15.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *view4;
- (IBAction)click2:(id)sender;

@end

@implementation ViewController

// UIView被UIViewController加载到内存中的时候
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cyanColor];
    
//    CGPoint(x,y) 点
//    CGSize(width,height)  宽高
//    CGRect(x,y,width,height)  矩形
    
    UIView *view = [[UIView alloc]init];
    view.frame = CGRectMake(100,100,100,100);
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view];
    
    UIView *view2 = [self.view viewWithTag:110];
    view2.backgroundColor = [UIColor blackColor];
    
    view.center = self.view.center;
    
    self.view4.backgroundColor = [UIColor purpleColor];
}

// UIView即将显示
- (void)viewWillAppear:(BOOL)animated {
    
}

// UIView显示出来
- (void)viewDidAppear:(BOOL)animated {
    
}

// 渲染的时候布局子控件
- (void)viewWillLayoutSubviews {
    
}

// 完成子控件的布局
- (void)viewDidLayoutSubviews {
    
}

// UIView即将消失
- (void)viewWillDisappear:(BOOL)animated {
    
}

// UIView完全消失
- (void)viewDidDisappear:(BOOL)animated {
    
}


- (IBAction)click2:(id)sender {
    NSLog(@"小仙女点击了我");
}
@end
