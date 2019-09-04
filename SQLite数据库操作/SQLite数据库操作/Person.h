//
//  Person.h
//  SQLite数据库操作
//
//  Created by 刘金萌 on 2019/9/3.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSString *phone;
@property(nonatomic, copy) NSString *address;

-(instancetype)initWithName: (NSString *)name Phone:(NSString *)phone Address:(NSString *)address;

@end

NS_ASSUME_NONNULL_END
