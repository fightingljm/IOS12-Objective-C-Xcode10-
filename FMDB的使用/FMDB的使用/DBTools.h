//
//  DBTools.h
//  FMDB的使用
//
//  Created by 刘金萌 on 2019/9/4.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

NS_ASSUME_NONNULL_BEGIN

@interface DBTools : NSObject

- (void)createDB;
- (void)createTab;
- (void)insertData: (Student *)stu;
- (void)deleteData: (NSString *)stuName;
- (void)updateData: (Student *)stu;
- (NSArray<Student *>*)queryData: (NSString *)stuName;

@end

NS_ASSUME_NONNULL_END
