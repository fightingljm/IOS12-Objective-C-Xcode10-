//
//  HuangshangViewController.m
//  控制器逆向传旨
//
//  Created by 刘金萌 on 2019/8/29.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "HuangshangViewController.h"

@interface HuangshangViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputValue;
- (IBAction)chuanzhi:(id)sender;

@end

@implementation HuangshangViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)chuanzhi:(id)sender {
    
    // 传旨
    // [self.delegate passValue:self.inputValue.text];
    // if(self.passValueBlock) {
    //     self.passValueBlock(self.inputValue.text);
    // }
    // 2.发送通知
    [[NSNotificationCenter defaultCenter] postNotificationName:@"passValue" object:nil userInfo:@{@"info": self.inputValue.text}];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
