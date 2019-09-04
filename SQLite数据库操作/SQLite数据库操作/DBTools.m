//
//  DBTools.m
//  SQLite数据库操作
//
//  Created by 刘金萌 on 2019/9/3.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "DBTools.h"
#import <sqlite3.h>

@interface DBTools () {
    sqlite3 *sqlite;
}

@end

@implementation DBTools

- (void)createDB {
    // 1.查找沙盒
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSLog(@"%@", docPath);
    // 2.拼接数据库
    NSString *dbPath = [docPath stringByAppendingPathComponent:self.dbName];
    // 3.创建数据库
    int result = sqlite3_open([dbPath UTF8String], &sqlite);
    
    if(result == SQLITE_OK) {
        NSLog(@"数据库创建成功");
    }
    else {
        NSLog(@"数据库创建失败");
    }
}

- (void)createTab:(NSString *)tabName {
    
     [self createDB];
    
    NSString *sql = [NSString stringWithFormat:@"create table %@(id integer primary key autoincrement, name text, phone text, address text)", tabName];
    
    NSLog(@"%@", sql);
    
    char *error;
    
    int result = sqlite3_exec(sqlite, [sql UTF8String], NULL, NULL, &error);
    
    if(result == SQLITE_OK) {
        NSLog(@"表创建成功");
    }
    else {
        NSLog(@"表创建失败 %s", error);
    }
    
     sqlite3_close(sqlite);

}

- (void)insertPerson:(Person *)person {
    
    [self createDB];
    
    NSString *sql = [NSString stringWithFormat:@"insert into person(name, phone, address) values ('%@', '%@', '%@')", person.name, person.phone, person.address];
    
    NSLog(@"%@", sql);
    
    char *error;
    
    int result = sqlite3_exec(sqlite, [sql UTF8String], NULL, NULL, &error);
    
    if(result == SQLITE_OK) {
        NSLog(@"插入数据成功");
    }
    else {
        NSLog(@"插入数据失败 %s", error);
    }
    
    sqlite3_close(sqlite);
    
}

- (void)deletePerson:(NSString *)personName {
    
    [self createDB];
    
    NSString *sql = [NSString stringWithFormat:@"delete from person where name = '%@'", personName];
    
    NSLog(@"%@", sql);
    
    char *error;
    
    int result = sqlite3_exec(sqlite, [sql UTF8String], NULL, NULL, &error);
    
    if(result == SQLITE_OK) {
        NSLog(@"删除成功");
    }
    else {
        NSLog(@"删除失败 %s", error);
    }
    sqlite3_close(sqlite);
}

- (void)updatePerson:(Person *)person {
    
    [self createDB];
    
    NSString *sql = [NSString stringWithFormat:@"update person set phone = '%@', address = '%@' where name = '%@'", person.phone, person.address, person.name];
    
    NSLog(@"%@", sql);
    
    char *error;
    int result = sqlite3_exec(sqlite, [sql UTF8String], NULL, NULL, &error);
    
    if(result == SQLITE_OK) {
        NSLog(@"更新数据成功");
    }
    else {
        NSLog(@"更新数据失败 %s", error);
    }
    sqlite3_close(sqlite);
}

- (NSArray<Person *> *)queryPersonByName:(NSString *)personName {
    [self createDB];
    
    NSString *sql = [NSString stringWithFormat:@"select phone, address from person where name = '%@'", personName];
    
    NSLog(@"%@", sql);
    
    sqlite3_stmt *stmt;
    
    int result = sqlite3_prepare_v2(sqlite, [sql UTF8String], -1, &stmt, NULL);
    
    NSMutableArray *person = [NSMutableArray array];
    
    if(result == SQLITE_OK) {
        while (sqlite3_step(stmt) == SQLITE_ROW) {
            const char *cPhone = (const char *)sqlite3_column_text(stmt, 0);
            const char *cAddress = (const char *)sqlite3_column_text(stmt, 1);
            Person *p = [[Person alloc] initWithName:personName Phone:[NSString stringWithUTF8String:cPhone] Address:[NSString stringWithUTF8String:cAddress]];
            [person addObject:p];
        }
    }
    else {
        NSLog(@"查询数据失败");
    }
    
    sqlite3_close(sqlite);
    
    return person;
}

@end
