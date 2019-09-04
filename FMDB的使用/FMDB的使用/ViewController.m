//
//  ViewController.m
//  FMDB的使用
//
//  Created by 刘金萌 on 2019/9/4.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"
#import "DBTools.h"

@interface ViewController ()

- (IBAction)createDB:(id)sender;
- (IBAction)createTab:(id)sender;
- (IBAction)insertData:(id)sender;
- (IBAction)deleteData:(id)sender;
- (IBAction)updateData:(id)sender;
- (IBAction)queryData:(id)sender;

@property(nonatomic,strong)DBTools *dbTools;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.dbTools = [[DBTools alloc] init];
    
}


- (IBAction)createDB:(id)sender {
    [self.dbTools createDB];
}
- (IBAction)createTab:(id)sender {
    [self.dbTools createTab];
}
- (IBAction)insertData:(id)sender {
    Student *stu = [[Student alloc] initWithName:@"xiaoming" Age:20 Sex:@"male"];
    [self.dbTools insertData:stu];
}
- (IBAction)deleteData:(id)sender {
    [self.dbTools deleteData:@"xiaoming"];
}
- (IBAction)updateData:(id)sender {
    Student *stu = [[self.dbTools queryData:@"xiaoming"] firstObject];
    
    if(stu) {
        stu.age = 16;
        stu.sex = @"male";
    }
    
    [self.dbTools updateData:stu];
}
- (IBAction)queryData:(id)sender {
    NSArray<Student *> *stus = [self.dbTools queryData:@"xiaoming"];
    
    if(stus.count>0){
        for (Student *stu in stus) {
            NSLog(@"%@", stu);
        }
    }
}
@end
