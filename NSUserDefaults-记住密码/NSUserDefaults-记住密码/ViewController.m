//
//  ViewController.m
//  NSUserDefaults-记住密码
//
//  Created by 刘金萌 on 2019/8/31.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;
@property (weak, nonatomic) IBOutlet UISwitch *rememberSwi;

@property (nonatomic, strong) NSUserDefaults *userDefaults;

- (IBAction)remember:(id)sender;
- (IBAction)login:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 初始化
    self.userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSString *username = [self.userDefaults valueForKey:@"username"];
    NSString *password = [self.userDefaults valueForKey:@"password"];
    Boolean *isOn = [self.userDefaults boolForKey:@"isOn"];
    
    self.usernameTF.text = username;
    self.passwordTF.text = password;
    // self.rememberSwi.on = isOn;
}


- (IBAction)remember:(id)sender {
    
    UISwitch *swi = (UISwitch *)sender;
    if(swi.isOn) {
        NSString *username = self.usernameTF.text;
        NSString *password = self.passwordTF.text;
        
        [self.userDefaults setObject:username forKey:@"username"];
        [self.userDefaults setObject:password forKey:@"password"];
        [self.userDefaults setBool:swi.isOn forKey:@"isOn"];
        
        [self.userDefaults synchronize];
    }
    
}

- (IBAction)login:(id)sender {
}

@end
