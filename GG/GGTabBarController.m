//
//  GGTabBarController.m
//  GG
//
//  Created by __无邪_ on 15/7/25.
//  Copyright © 2015年 __无邪_. All rights reserved.
//

#import "GGTabBarController.h"

@interface GGTabBarController ()
@property (nonatomic, strong) UIView *bgView;
@end

@implementation GGTabBarController



- (void)viewDidLoad{
    [super viewDidLoad];
    
    
    [self configureTabBar];
    
    
//    
//    for (UIViewController *controller in self.viewControllers) {
//        
//    }
//    
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 49)];
    [view setBackgroundColor:[UIColor redColor]];
    [self.bgView addSubview:view];
    
    
    
    [view setUserInteractionEnabled:NO];
    
    
}


#pragma mark - public

- (void)showTabBar:(BOOL)flag{
    
    CGFloat height = 0;
    if (flag) {height = 49;}
    
    CGRect rect = CGRectMake(0, CGRectGetHeight(self.view.bounds) - height, CGRectGetWidth(self.view.bounds), height);
    
    [UIView animateWithDuration:0.25 animations:^{
        [self.tabBar setFrame:rect];
        [self.bgView setFrame:rect];
    }];
}



#pragma mark - configure


- (void)configureTabBar{
    /// 配置基本属性
    
    [self.tabBar setTranslucent:YES];
    [self.tabBar setAlpha:kBarAlpha];
    
    
    /// 创建视图
    self.bgView = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.view.bounds) - 49, CGRectGetWidth(self.view.bounds), 49)];
    [self.view addSubview:self.bgView];
    [self.bgView setUserInteractionEnabled:NO];
}


@end
