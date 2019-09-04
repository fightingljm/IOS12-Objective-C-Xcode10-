//
//  ViewController.m
//  UITableView自定义Cell
//
//  Created by 刘金萌 on 2019/8/21.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"
#import "WechatTableViewCell.h"
#import "WechatTableViewCellXIB.h"
#import "Wechat.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(strong, nonatomic) NSMutableArray *wechats;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView.rowHeight = 100.0;
    
    self.wechats = [[[Wechat alloc] init] getModels];
    
    _tableView.tableFooterView = [[UIView alloc] init];
    
    // 关联Cell到TableView
    [_tableView registerNib:[UINib nibWithNibName:@"WechatTableViewCellXIB" bundle:nil] forCellReuseIdentifier:@"cba"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.wechats.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    WechatTableViewCellXIB *cell = [tableView dequeueReusableCellWithIdentifier:@"cba"];
    
    [cell configCell:[self.wechats objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
