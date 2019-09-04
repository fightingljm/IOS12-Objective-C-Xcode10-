//
//  ViewController.m
//  UISegmentControl的使用
//
//  Created by 刘金萌 on 2019/8/19.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)change:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)change:(id)sender {
    UISegmentedControl *setment = (UISegmentedControl *) sender;
    if (setment.selectedSegmentIndex == 0) {
        NSLog(@"0");
    }else {
        NSLog(@"1");
    }
}
@end
