//
//  UserModel.h
//  Model的使用
//
//  Created by 刘金萌 on 2019/8/20.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserModel : NSObject

@property(copy, nonatomic) NSString *username;
@property(copy, nonatomic) NSString *password;

@property(strong, nonatomic) NSData *avatar;

@end

NS_ASSUME_NONNULL_END
