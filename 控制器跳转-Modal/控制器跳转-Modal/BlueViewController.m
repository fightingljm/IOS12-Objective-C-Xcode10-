//
//  BlueViewController.m
//  控制器跳转-Modal
//
//  Created by 刘金萌 on 2019/8/29.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "BlueViewController.h"

@interface BlueViewController ()
@property (weak, nonatomic) IBOutlet UILabel *infoLable;

@end

@implementation BlueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.infoLable.text = self.passValue;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
