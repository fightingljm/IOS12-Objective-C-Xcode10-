//
//  ViewController.m
//  控制器跳转-Modal
//
//  Created by 刘金萌 on 2019/8/29.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"
#import "BlueViewController.h"

@interface ViewController ()
- (IBAction)linkToBlueVc:(id)sender;
- (IBAction)segueLinkToBlueVc:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)linkToBlueVc:(id)sender {
    // 1.初始化要跳转的控制器
    BlueViewController *blueVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"abc"];
    
    // 传旨
    blueVC.passValue = @"皇上有旨";
    
    // 2.跳转
    [self presentViewController:blueVC animated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    BlueViewController *blueVC = segue.destinationViewController;
    
    blueVC.passValue = @"segue有旨";
}

- (IBAction)segueLinkToBlueVc:(id)sender {
    
    [self performSegueWithIdentifier:@"abcd" sender:nil];
}

@end
