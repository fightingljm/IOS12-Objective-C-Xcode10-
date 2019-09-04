//
//  ViewController.m
//  UIProgressView的使用
//
//  Created by 刘金萌 on 2019/8/19.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [UIView animateWithDuration:3.0 animations:^{
        [self.progressView setProgress:1.0 animated:YES];
    }];
}


@end
