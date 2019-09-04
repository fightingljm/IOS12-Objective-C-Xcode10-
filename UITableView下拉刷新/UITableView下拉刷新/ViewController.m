//
//  ViewController.m
//  UITableView下拉刷新
//
//  Created by 刘金萌 on 2019/8/22.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *data;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView.rowHeight = 66.0;
    
    NSArray *arr = @[@"one",@"zbz",@"cgx",@"sb",@"cjk",@"senni"];
    _data = [NSMutableArray arrayWithArray:arr];
    
    UIRefreshControl *control = [[UIRefreshControl alloc] init];
    control.attributedTitle = [[NSAttributedString alloc]initWithString:@"下拉刷新"];
    [control addTarget:self action:@selector(refreshTableView) forControlEvents:UIControlEventValueChanged];
    _tableView.refreshControl = control;
}

-(void)refreshTableView{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.data insertObject:@"我是新来的" atIndex:0];
        [self.tableView reloadData];
        if([self.tableView.refreshControl isRefreshing]){
            [self.tableView.refreshControl endRefreshing];
        }
    });
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"aaa"];
    cell.textLabel.text = _data[indexPath.row];
    return cell;
}

@end
