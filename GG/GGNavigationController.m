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


#pragma mark - public

- (void)showNavigationBar:(BOOL)flag{
    [self showNavigationBar:flag animation:YES];
}

- (void)showNavigationBar:(BOOL)flag animation:(BOOL)animated{
    
    CGFloat y = -64;
    if (flag) {y = 0;}
    
    CGRect rect = CGRectMake(0, y, CGRectGetWidth(self.view.bounds), 64);
    
    if (animated) {
        
        [UIView animateWithDuration:0.25 animations:^{
            [self.navigationBar setFrame:rect];
        }];
    }else{
        
        [self.navigationBar setFrame:rect];
    }
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
