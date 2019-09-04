//
//  Wechat.h
//  UITableView自定义Cell
//
//  Created by 刘金萌 on 2019/8/21.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Wechat : NSObject

@property(copy, nonatomic) NSString *picName;
@property(copy, nonatomic) NSString *titleText;
@property(copy, nonatomic) NSString *timeText;
@property(copy, nonatomic) NSString *contentText;

-(NSMutableArray *)getModels;

@end

NS_ASSUME_NONNULL_END
