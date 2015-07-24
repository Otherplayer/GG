//
//  ViewController.m
//  GG
//
//  Created by __无邪_ on 15/7/24.
//  Copyright © 2015年 __无邪_. All rights reserved.
//

#import "ViewController.h"
#import "BaseTableViewProtocol.h"

static NSString * const Identifier = @"PhotoCell";

@interface ViewController ()<TableViewCellDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) BaseTableViewProtocol *protocol;
@property (nonatomic, strong) NSMutableArray *photos;

@end

@implementation ViewController

#pragma mark - lifeCircle
- (void)viewDidLoad {
    [super viewDidLoad];

    
    [self setTitle:@"无邪"];
    
    self.photos = [[NSMutableArray alloc] initWithArray:@[@"asdfa",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs",@"safd",@"adfs"]];
    
    
    self.protocol = [[BaseTableViewProtocol alloc] initWithItems:self.photos cellIdentifier:Identifier numberOfSections:1 numberOfRowsInSectionConfigureBlock:^NSInteger(NSInteger section) {
        return self.photos.count;
    } cellConfigureBlock:^(UITableViewCell *cell, id entity, NSIndexPath *indexPath) {
        cell.textLabel.textColor = [UIColor redColor];
        [cell.textLabel setText:entity];
        [cell setBackgroundColor:[UIColor cyanColor]];
    }];
    
    
    
    self.tableView.dataSource = self.protocol;
    self.tableView.delegate = self.protocol;
    
    [self.protocol setDelegate:self];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:Identifier];
    
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 64)];
    [headerView setBackgroundColor:[UIColor orangeColor]];
    [self.tableView setTableHeaderView:headerView];
    
    

    
    

    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - tableview delegate

- (BOOL)isCellEditable{
    return YES;
}
- (void)selectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%ld",indexPath.row);
    [self showTabBar:indexPath.row % 2];
    [self showNavigationBar:indexPath.row %2];
}
- (CGFloat)cellHeightAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
- (void)deleteRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.photos removeObjectAtIndex:indexPath.row];
    [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationTop];
}



@end
