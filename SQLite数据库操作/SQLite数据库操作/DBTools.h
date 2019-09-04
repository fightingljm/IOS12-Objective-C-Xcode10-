//
//  DBTools.h
//  SQLite数据库操作
//
//  Created by 刘金萌 on 2019/9/3.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface DBTools : NSObject

- (void)createDB;

- (void)createTab:(NSString *)tabName;

- (void)insertPerson:(Person *)person;

- (void)deletePerson:(NSString *)personName;

- (void)updatePerson:(Person *)person;

- (NSArray<Person *> *)queryPerson;
- (NSArray<Person *> *)queryPersonByName:(NSString *)personName;

@property(nonatomic,copy) NSString *dbName;

@end

NS_ASSUME_NONNULL_END
