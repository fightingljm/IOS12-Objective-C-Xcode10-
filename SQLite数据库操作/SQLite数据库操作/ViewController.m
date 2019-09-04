//
//  ViewController.m
//  SQLite数据库操作
//
//  Created by 刘金萌 on 2019/9/3.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"
#import "DBTools.h"

@interface ViewController ()
// 创建数据库
- (IBAction)createDataBase:(id)sender;
// 创建数据表
- (IBAction)createTable:(id)sender;
// 插入数据
- (IBAction)insertData:(id)sender;
// 删除数据
- (IBAction)deleteData:(id)sender;
// 更新数据
- (IBAction)updateData:(id)sender;
// 查询数据
- (IBAction)queryData:(id)sender;

@property(nonatomic, strong) DBTools *dbTools;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.dbTools = [[DBTools alloc] init];
    self.dbTools.dbName = @"person.db";
}

- (IBAction)createDataBase:(id)sender {
    
    [self.dbTools createDB];
    
}

- (IBAction)createTable:(id)sender {
    
    [self.dbTools createTab:@"person"];
    
}

- (IBAction)insertData:(id)sender {
    
    Person *p = [[Person alloc] initWithName:@"刘金萌" Phone:@"66688889999" Address:@"河北石家庄"];
    [self.dbTools insertPerson:p];
    
}

- (IBAction)deleteData:(id)sender {
    [self.dbTools deletePerson:@"刘金萌"];
}

- (IBAction)updateData:(id)sender {
    Person *p = [[self.dbTools queryPersonByName:@"刘金萌"] firstObject];
    if(p){
        p.phone = @"13388889999";
        p.address = @"天津红桥区";
        [self.dbTools updatePerson:p];
    }
}

- (IBAction)queryData:(id)sender {
    NSArray *array = [self.dbTools queryPersonByName:@"刘金萌"];
    if(array.count>0){
        for (Person *p in array) {
            NSLog(@"%@", p);
        }
    }
}

@end
