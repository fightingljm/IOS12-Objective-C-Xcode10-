//
//  ViewController.m
//  UIPickerView案例
//
//  Created by 刘金萌 on 2019/8/19.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDataSource,UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *first;
@property (weak, nonatomic) IBOutlet UILabel *second;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) NSArray *firstArr;
@property (strong, nonatomic) NSArray *secondArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _firstArr = @[@"泰国香米饭", @"烤馒头片", @"红烧牛肉面", @"大馅水饺", @"特色酱香饼"];
    _secondArr = @[@"芦笋虾球", @"豆瓣鸡", @"肉蟹煲", @"软炸鲜蘑", @"皮蛋豆腐", @"水煮鱼"];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if(component == 0) {
        return _firstArr.count;
    }
    else {
        return _secondArr.count;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if(component == 0) {
        return _firstArr[row];
    }
    else {
        return _secondArr[row];
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if(component == 0) {
        _first.text = [@"主食：" stringByAppendingString: _firstArr[row]];
    }
    else {
        _second.text = [@"特色菜：" stringByAppendingString: _secondArr[row]];
    }
}

@end
