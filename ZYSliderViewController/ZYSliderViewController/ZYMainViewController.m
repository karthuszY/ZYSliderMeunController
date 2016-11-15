//
//  ZYMainViewController.m
//  ZYSliderViewController
//
//  Created by zY on 16/11/10.
//  Copyright © 2016年 zY. All rights reserved.
//

#import "ZYMainViewController.h"
#import "UIViewController+ZYSliderViewController.h"
#import "ZYSliderViewController.h"

@interface ZYMainViewController () <UITableViewDelegate,UITableViewDataSource>
{
    NSArray *_dataSource;
}
@end

@implementation ZYMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.rowHeight = 44.f;
    tableView.tableFooterView = [UIView new];
    tableView.backgroundColor = [UIColor colorWithRed:235 green:235 blue:235 alpha:1];
    [self.view addSubview:tableView];
    
    _dataSource = @[@"line1",@"line2",@"line3"];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(showLeftAction)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(showRightAction)];
}

- (void)showLeftAction
{
    [[self sliderViewController] showLeft];
}

- (void)showRightAction
{
    [[self sliderViewController] showRight];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"identifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.textLabel.text = _dataSource[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UIViewController *controller = [[UIViewController alloc] init];
    controller.view.backgroundColor = [UIColor redColor];
    [self.navigationController pushViewController:controller animated:YES];
}


@end
