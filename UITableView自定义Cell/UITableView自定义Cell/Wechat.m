//
//  Wechat.m
//  UITableView自定义Cell
//
//  Created by 刘金萌 on 2019/8/21.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "Wechat.h"

@interface Wechat()

@property(strong, nonatomic) NSArray *pics;
@property(strong, nonatomic) NSArray *titles;
@property(strong, nonatomic) NSArray *times;
@property(strong, nonatomic) NSArray *contents;
@property(strong, nonatomic) NSMutableArray *wechats;

@end

@implementation Wechat

- (NSMutableArray *)wechats {
    if(_wechats==nil){
        _wechats = [NSMutableArray array];
        for (int i=0; i<self.titles.count; i++) {
            
            Wechat *wechat = [[Wechat alloc] init];
            
            wechat.picName = self.pics[i];
            wechat.titleText = self.titles[i];
            wechat.timeText = self.times[i];
            wechat.contentText = self.contents[i];
            
            [_wechats addObject:wechat];
            
        }
    }
    return _wechats;
}

- (NSArray *)pics {
    if(_pics==nil) {
        _pics = @[@"add_friend_icon_addgroup", @"Contact_icon_ContactTag", @"plugins_FriendNotify"];
    }
    return _pics;
}

- (NSArray *)titles {
    if(_titles==nil){
        _titles = @[@"标题一", @"标题二", @"标题三"];
    }
    return _titles;
}

- (NSArray *)times {
    if(_times==nil){
        _times = @[@"10:10", @"11:12", @"08:09"];
    }
    return _times;
}

- (NSArray *)contents {
    if(_contents==nil){
        _contents = @[@"内容一", @"内容二", @"内容三"];
    }
    return _contents;
}

- (NSMutableArray *)getModels {
    return self.wechats;
}

@end
