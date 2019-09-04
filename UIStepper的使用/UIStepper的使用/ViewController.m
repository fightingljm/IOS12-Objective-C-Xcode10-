//
//  ViewController.m
//  UIStepper的使用
//
//  Created by 刘金萌 on 2019/8/16.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *mana;

- (IBAction)change:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)change:(id)sender {
    UIStepper *stepper = (UIStepper *) sender;
    double value = stepper.value;
    self.mana.text = [NSString stringWithFormat:@"🧚‍♀️法力值%d...",(int)value];
}

@end
