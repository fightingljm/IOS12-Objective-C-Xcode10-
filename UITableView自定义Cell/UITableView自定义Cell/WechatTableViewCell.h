//
//  WechatTableViewCell.h
//  UITableView自定义Cell
//
//  Created by 刘金萌 on 2019/8/21.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Wechat.h"
NS_ASSUME_NONNULL_BEGIN

@interface WechatTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *pic;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UILabel *content;
-(void)configCell:(Wechat *)wechat;
@end

NS_ASSUME_NONNULL_END
