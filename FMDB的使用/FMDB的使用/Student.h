//
//  Student.h
//  FMDB的使用
//
//  Created by 刘金萌 on 2019/9/4.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property(nonatomic,copy) NSString *name;
@property(nonatomic,assign) int age;
@property(nonatomic,copy) NSString *sex;

-(instancetype)initWithName: (NSString *) name Age:(int)age Sex:(NSString *)sex;

@end

NS_ASSUME_NONNULL_END
