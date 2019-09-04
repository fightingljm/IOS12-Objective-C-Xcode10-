//
//  Student.m
//  FMDB的使用
//
//  Created by 刘金萌 on 2019/9/4.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithName:(NSString *)name Age:(int)age Sex:(NSString *)sex
{
    if (self = [super init]) {
        self.name = name;
        self.age = age;
        self.sex = sex;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"姓名：%@, 年龄：%d, 性别：%@", self.name, self.age, self.sex];
}

@end
