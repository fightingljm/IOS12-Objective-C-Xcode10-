//
//  ViewController.m
//  数据存储的目录
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
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
    
    NSLog(@"%@", path);
    
    // MARK:- 沙盒路径访问
    
    // 沙盒入口
    NSLog(@"%@", NSHomeDirectory());
    
    // tmp
    NSLog(@"%@", NSTemporaryDirectory());
    
    // 拼接获取Documents
    NSString *doc = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
    NSLog(@"%@", doc);
    
    // 函数访问  NSDocumentDirectory  NSLibraryDirectory  NSCachesDirectory
    NSString *docDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSLog(@"%@", docDir);
    
    NSString *libDir = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) firstObject];
    NSLog(@"%@", libDir);
    
    NSString *cachesDir = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
    NSLog(@"%@", cachesDir);
}


@end
