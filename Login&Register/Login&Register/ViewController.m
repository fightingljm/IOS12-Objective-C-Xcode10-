//
//  ViewController.m
//  Login&Register
//
//  Created by 刘金萌 on 2019/8/16.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)login:(id)sender;
- (IBAction)register:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)login:(id)sender {
    [self.password resignFirstResponder];
    
    NSString *nameText = self.username.text;
    NSString *pwdText = self.password.text;
    
    NSLog(@"用户名为：%@，密码为：%@", nameText, pwdText);
    
    if([nameText isEqualToString:@"admin"] && [pwdText isEqualToString:@"123456"]) {
        NSLog(@"小仙女🧚‍♀️身份属实");
    }
    else {
        NSLog(@"还要继续修炼哦🐶");
    }
}

- (IBAction)register:(id)sender {
    NSLog(@"小仙女🧚‍♀️办张卡吗？？？");
}

@end
