//
//  WechatTableViewCellXIB.m
//  UITableView自定义Cell
//
//  Created by 刘金萌 on 2019/8/22.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "WechatTableViewCellXIB.h"

@implementation WechatTableViewCellXIB

- (void)configCell:(Wechat *)wechat {
    self.pic.image = [UIImage imageNamed:wechat.picName];
    self.title.text = wechat.titleText;
    self.time.text = wechat.timeText;
    self.content.text = wechat.contentText;
}

@end
