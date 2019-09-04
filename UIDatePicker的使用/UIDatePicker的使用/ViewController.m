//
//  ViewController.m
//  UIDatePicker的使用
//
//  Created by 刘金萌 on 2019/8/19.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)getDate:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *date;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)getDate:(id)sender {
    UIDatePicker *picker = (UIDatePicker *) sender;
    
    // 日期格式化
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    
    // yyyy MM dd hh/HH mm ss
    [format setDateFormat:@"yyyy-MM-dd"];
    
    self.date.text = [@"日期：" stringByAppendingString:[format stringFromDate: picker.date]];
}

@end
