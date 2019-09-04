//
//  Person.m
//  SQLite数据库操作
//
//  Created by 刘金萌 on 2019/9/3.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithName:(NSString *)name Phone:(NSString *)phone Address:(NSString *)address {
    if(self = [super init]) {
        self.name = name;
        self.phone = phone;
        self.address = address;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"名字：%@，电话：%@，地址：%@", self.name, self.phone, self.address];
}

@end
