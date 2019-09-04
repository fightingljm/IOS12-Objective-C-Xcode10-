//
//  Person.h
//  归档
//
//  Created by 刘金萌 on 2019/9/3.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject<NSSecureCoding>

@property(nonatomic,strong) NSString *name;
@property(nonatomic,assign) int age;

@end

NS_ASSUME_NONNULL_END
