//
//  ViewController.m
//  UISlider的使用
//
//  Created by 刘金萌 on 2019/8/16.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *img;
- (IBAction)change:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (IBAction)change:(id)sender {
    UISlider *slider = (UISlider *) sender;
    
    if(slider.value < 35) {
        NSLog(@"初级小仙女🦐");
    }
    else if (slider.value < 70) {
        NSLog(@"中级小仙女🦀️");
    }
    else {
        NSLog(@"高级小仙女🧜‍♀️");
    }
}

@end
