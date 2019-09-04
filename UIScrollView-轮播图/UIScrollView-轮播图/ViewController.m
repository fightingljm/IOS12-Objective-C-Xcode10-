//
//  ViewController.m
//  UIScrollView-轮播图
//
//  Created by 刘金萌 on 2019/8/19.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *bannerScrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    
    _bannerScrollView.contentSize = CGSizeMake(screenWidth * 5, 200);
    
    for (int i=0; i<5; i++) {
        
        CGRect frame = CGRectMake(i * screenWidth, 0, screenWidth, 200);
        
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:frame];
        
        imgView.image = [UIImage imageNamed: [NSString stringWithFormat:@"img_%d", i]];
        
        [_bannerScrollView addSubview:imgView];
    }
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    
    CGFloat offsetX = scrollView.contentOffset.x;
    
    _pageControl.currentPage = offsetX/screenWidth;
}


@end
