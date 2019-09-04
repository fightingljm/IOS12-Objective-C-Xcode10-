//
//  ViewController.m
//  plist文件解析
//
//  Created by 刘金萌 on 2019/8/31.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // NSDictionary *dic = [NSBundle mainBundle].infoDictionary;
    // NSLog(@"%@",dic[@"UIMainStoryboardFile"]);
    // NSLog(@"%@",dic);
    
    // NSString *path = [[NSBundle mainBundle] pathForResource:@"user" ofType:@"plist"];
    // NSDictionary *user = [NSDictionary dictionaryWithContentsOfFile:path];
    // NSString *username = user[@"username"];
    // NSString *password = user[@"password"];
    // NSLog(@"username = %@, password = %@", username, password);
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"cityData.plist" ofType:nil];
    NSDictionary *cites = [NSDictionary dictionaryWithContentsOfFile:path];
    NSLog(@"%@", [[cites allKeys] firstObject]);
    
    NSArray *city = cites[[[cites allKeys] firstObject]];
    NSLog(@"%@",city);
    
    NSLog(@"%@", [city lastObject]);
    
    NSString *fileName = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:@"city.plist"];
    
    [city writeToFile:fileName atomically:YES];
    
}


@end
