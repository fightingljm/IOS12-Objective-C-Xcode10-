//
//  ViewController.m
//  UISwitch的使用
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
    // Do any additional setup after loading the view.
}


- (IBAction)change:(id)sender {
    UISwitch *swi = (UISwitch *)sender;
    if(swi.isOn) {
        NSLog(@"打开电视📺");
        self.img.image = [UIImage imageNamed:@"img_active"];
    }
    
    else {
        NSLog(@"关闭电视📺");
        self.img.image = [UIImage imageNamed:@"img_normal"];
    }
}

@end
