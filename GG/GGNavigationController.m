//
//  GGNavigationController.m
//  GG
//
//  Created by __无邪_ on 15/7/24.
//  Copyright © 2015年 __无邪_. All rights reserved.
//

#import "GGNavigationController.h"
#import "UINavigationBar+Awesome.h"
@implementation GGNavigationController

#pragma mark - lifeCircle
- (void)viewDidLoad{
    [super viewDidLoad];
    
    [self configureNavigationBar];
}





#pragma mark - configure

- (void)configureNavigationBar{
    /// 配置 navigationBar
    [self.navigationBar lt_setBackgroundColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:kBarAlpha]];
    [self.navigationBar setTranslucent:YES];
    
    
    /// 设置标题
    
    UIColor *fontColor = [UIColor blackColor];
    [self.navigationBar setTitleTextAttributes:@{
                                                 NSFontAttributeName : [UIFont systemFontOfSize:17.f],
                                                 NSForegroundColorAttributeName : fontColor,
                                                 }];
    [self.navigationBar setTintColor:fontColor];
}

@end
