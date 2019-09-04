//
//  DBTools.m
//  FMDB的使用
//
//  Created by 刘金萌 on 2019/9/4.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "DBTools.h"
#import "fmdb/FMDB.h"

@interface DBTools ()

@property(nonatomic,strong) FMDatabase *db;

@end

@implementation DBTools

- (void)createDB {
    
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSLog(@"%@",docPath);
    NSString *fileName = [docPath stringByAppendingPathComponent:@"student.db"];
    
    self.db = [FMDatabase databaseWithPath:fileName];
    
    BOOL isSuccess = [self.db open];
    
    if(isSuccess){
        NSLog(@"打开数据库成功");
    }
    else{
        NSLog(@"打开数据库失败");
    }
    
}

- (void)createTab {
    
    [self createDB];
    
    NSString *sql = @"create table t_stu(id integer primary key autoincrement, name text, age integer, sex text)";
    
    BOOL isSuccess = [self.db executeUpdate:sql];
    
    if(isSuccess){
        NSLog(@"数据表成功");
    }
    else{
        NSLog(@"数据表失败");
    }
    
    [self.db close];
    
}

- (void)insertData: (Student *)stu {
    [self createDB];
    
    NSString *sql = @"insert into t_stu(name, age, sex) values (?,?,?)";
    
    BOOL isSuccess = [self.db executeUpdate:sql, stu.name, @(stu.age), stu.sex];
    
    if(isSuccess){
        NSLog(@"数据添加成功");
    }
    else{
        NSLog(@"数据添加失败");
    }
    
    [self.db close];
}

- (void)deleteData: (NSString *)stuName {
    [self createDB];
    
    NSString *sql = @"delete from t_stu where name = ?";
    
    BOOL isSuccess = [self.db executeUpdate:sql, stuName];
    
    if(isSuccess){
        NSLog(@"数据删除成功");
    }
    else{
        NSLog(@"数据删除失败");
    }
    
    [self.db close];
}

- (void)updateData: (Student *)stu {
    [self createDB];
    
    NSString *sql = @"update t_stu set age = ?, sex = ? where name = ?";
    
    BOOL isSuccess = [self.db executeUpdate:sql, @(stu.age), stu.sex, stu.name];
    
    if(isSuccess){
        NSLog(@"数据修改成功");
    }
    else{
        NSLog(@"数据修改失败");
    }
    
    [self.db close];
}

- (NSArray<Student *>*)queryData: (NSString *)stuName {
    
    [self createDB];
    
    NSMutableArray<Student *> *stus = [[NSMutableArray alloc] init];
    
    NSString *sql = @"select age, sex from t_stu where name = ?";
    
    FMResultSet *result = [self.db executeQuery:sql, stuName];
    
    while (result.next) {
        
        int age = [result intForColumn:@"age"];
        NSString *sex = [result stringForColumn:@"sex"];
        
        Student *stu = [[Student alloc] initWithName:stuName Age:age Sex:sex];
        
        [stus addObject:stu];
        
    }
    
    [self.db close];
    
    return stus;
}

@end
