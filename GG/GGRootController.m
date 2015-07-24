//
//  GGRootController.m
//  GG
//
//  Created by __无邪_ on 15/7/25.
//  Copyright © 2015年 __无邪_. All rights reserved.
//

#import "GGRootController.h"
#import "GGTabBarController.h"
@implementation GGRootController


#pragma mark -

- (void)setTitle:(NSString * _Nullable)title{
    [self.tabBarController.navigationItem setTitle:title];
}

#pragma mark - global public

- (void)showTabBar:(BOOL)flag{
    [(GGTabBarController *)self.tabBarController showTabBar:flag];
}


@end
