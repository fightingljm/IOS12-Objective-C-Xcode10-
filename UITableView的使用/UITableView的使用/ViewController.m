//
//  ViewController.m
//  UITableView的使用
//
//  Created by 刘金萌 on 2019/8/20.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *data;
- (IBAction)addCell:(id)sender;
- (IBAction)endEdit:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView.rowHeight = 88.0;
    
    NSArray *arr = @[@"one",@"zbz",@"cgx",@"sb",@"cjk",@"senni"];
    
    _data = [NSMutableArray arrayWithArray:arr];
}

// MARK:- 数据源方法

// 多少组
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 1;
//}

// 每组多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _data.count;
}


// 每行显示的内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"aaa"];
    
    cell.textLabel.text = _data[indexPath.row];
    
    return cell;
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Table Header";
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @"Table Footer";
}

// MARK:- 代理方法

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 80.0;
//}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 60.0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 40.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // 处理点击事件
    NSString *selData = _data[indexPath.row];
    
    NSLog(@"%@", selData);
}

// 1.能否编辑
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
// 2.提交编辑
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(editingStyle==UITableViewCellEditingStyleDelete) {
        // 删除
        // 先-删除对应的数据源
        [_data removeObjectAtIndex:indexPath.row];
        // 后-删除界面上的那一行
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    else {
        // 增加数据源
        [_data insertObject:@"刘小鱼" atIndex:indexPath.row];
        // 刷新表格 - 浪费性能不使用
        // [_tableView reloadData];
        [tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
    }
}
// 3.设置删除按钮的文字
- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath {
    return @"删除";
}

- (IBAction)addCell:(id)sender {
    [_tableView setEditing:YES];
}

- (IBAction)endEdit:(id)sender {
    [_tableView setEditing:NO];
}

// 改变编辑风格 为 添加
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 默认情况上删除
    return UITableViewCellEditingStyleInsert;
}

// 移动
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    // 获取需要移动的cell
    NSString *cellData = _data[sourceIndexPath.row];
    // 移除原始位置的数据
    [_data removeObjectAtIndex: sourceIndexPath.row];
    // 数据添加到目标位置
    [_data insertObject:cellData atIndex:destinationIndexPath.row];
}

@end
