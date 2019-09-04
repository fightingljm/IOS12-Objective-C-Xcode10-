//
//  ViewController.m
//  归档
//
//  Created by 刘金萌 on 2019/9/3.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
- (IBAction)archiver:(id)sender;
- (IBAction)unArchiver:(id)sender;
@property(nonatomic,strong) NSData *data;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 对象的序列化 但序列化
    
    
    // NSKeyedArchiver
    // NSKeyedUnarchiver
}


- (IBAction)archiver:(id)sender {
    
    Person *p = [[Person alloc]init];
    p.name = @"ljm";
    p.age = 20;
    
    NSError *error;
    
    self.data = [NSKeyedArchiver archivedDataWithRootObject:p requiringSecureCoding:YES error:&error];
    
    if(error){
        NSLog(@"%@", error);
    }
    
}

- (IBAction)unArchiver:(id)sender {
    Person *p = [NSKeyedUnarchiver unarchivedObjectOfClass:Person.class fromData:self.data error:nil];
    
    NSLog(@"名字：%@，年龄：%d",p.name,p.age);
}

@end
