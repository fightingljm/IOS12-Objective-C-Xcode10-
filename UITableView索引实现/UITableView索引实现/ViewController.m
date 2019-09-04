//
//  ViewController.m
//  UITableView索引实现
//
//  Created by 刘金萌 on 2019/8/20.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(strong, nonatomic) NSMutableArray *sectionArr;
@property(strong, nonatomic) NSArray *citys;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

// 懒加载 - 延迟加载
- (NSArray *)citys {
    if (_citys == nil) {
        _citys = @[
           @[@"北京",@"上海",@"广州",@"烟台"],
           @[@"阿坝",@"阿克苏",@"安康",@"安阳",@"澳门"],
           @[@"北京",@"白城",@"白山",@"包头",@"宝鸡",@"保定",@"滨州"],
           @[@"重庆",@"成都",@"长沙",@"长春",@"沧州",@"赤峰"],
           @[@"大连",@"东莞",@"达州",@"大理",@"大同",@"大兴安岭",@"丹东",@"东营"],
           @[@"鄂尔多斯",@"鄂州",@"恩施"],
           @[@"佛山",@"福州",@"抚顺",@"阜新",@"阜阳"],
           @[@"广州",@"贵阳",@"桂林",@"甘南",@"格尔木",@"广安",@"广元"],
           @[@"杭州",@"海口",@"哈尔滨",@"合肥",@"哈密",@"海北",@"海东",@"海西",@"海南",@"邯郸",@"菏泽",@"鹤岗",@"黄山"],
           @[@"济南",@"锦州",@"吉林",@"济宁",@"嘉兴",@"嘉峪关",@"金华",@"荆门",@"荆州",@"酒泉",@"景德镇"],
           @[@"昆明",@"喀什",@"开封",@"克拉玛依"],
           @[@"洛阳",@"拉萨",@"兰州",@"莱芜",@"廊坊",@"乐山",@"丽江",@"连云港",@"辽阳",@"临汾",@"临沂",@"六盘水"],
           @[@"茂名",@"马鞍山",@"牡丹江"],
           @[@"南京",@"宁波",@"南昌",@"南宁",@"南通",@"宁德"],
           @[@"攀枝花",@"盘锦",@"平顶山",@"普洱"],
           @[@"青岛",@"齐齐哈尔",@"黔南",@"秦皇岛",@"庆阳",@"琼海",@"泉州"],
           @[@"日喀什",@"日照"],
           @[@"上海",@"深圳",@"沈阳",@"石家庄",@"苏州",@"三门峡",@"三亚",@"汕头",@"绍兴",@"十堰",@"石河子",@"松原"],
           @[@"天津",@"唐山",@"台湾",@"太原",@"泰州",@"泰安",@"通辽",@"吐鲁番"],
           @[@"武汉",@"无锡",@"潍坊",@"乌鲁木齐",@"威海",@"五指山"],
           @[@"西安",@"厦门",@"徐州",@"西沙",@"仙桃",@"咸阳",@"孝感"],
           @[@"银川",@"雅安",@"烟台",@"延安",@"盐城",@"扬州",@"阳江",@"宜宾",@"宜昌",@"玉树"],
           @[@"郑州",@"珠海",@"淄博",@"漳州",@"张家口",@"驻马店",@"遵义"],
        ];
    }
    return _citys;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 索引数组
    _sectionArr = [NSMutableArray arrayWithObjects:@"#", nil];
    for (char ch='A'; ch<='Z'; ch++) {
        if (ch=='I' || ch== 'O' || ch== 'U' || ch== 'V')
            continue;
        [_sectionArr addObject:[NSString stringWithFormat:@"%c",ch]];
    }
    
    // 索引文字颜色
    _tableView.sectionIndexColor = UIColor.redColor;
    // 索引背景色
    _tableView.sectionIndexBackgroundColor = UIColor.yellowColor;
}

// 组
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _sectionArr.count;
}

// 每组行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self.citys objectAtIndex:section] count];
}

// 每行内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
    
    cell.textLabel.text = self.citys[indexPath.section][indexPath.row];
    
    return cell;
}

// section header title
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return _sectionArr[section];
}

// 右侧索引
- (NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return _sectionArr;
}

// 在点击索引的时候做一些事情
- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    
    NSLog(@"%@",title);
    
    return index;
}

@end
