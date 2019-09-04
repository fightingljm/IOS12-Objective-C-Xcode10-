//
//  ViewController.m
//  UIDatePicker案例
//
//  Created by 刘金萌 on 2019/8/19.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *input;
@property (strong, nonatomic) UIDatePicker *picker;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.创建日期选择器
    _picker = [[UIDatePicker alloc] init];
    
    _picker.datePickerMode = UIDatePickerModeDate;
    
    _picker.locale = [NSLocale localeWithLocaleIdentifier:@"ZH_cn"];
    
    // 2.设置输入框的输入类型为日期选择器
    _input.inputView = _picker;
    
    // 3.监听用户选择的日期
    [_picker addTarget:self action:@selector(getDate:) forControlEvents:UIControlEventValueChanged];
}

-(void) getDate: (UIDatePicker *) picker{
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    
    [format setDateFormat:@"yyyy-MM-dd"];
    
    _input.text = [format stringFromDate:picker.date];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
