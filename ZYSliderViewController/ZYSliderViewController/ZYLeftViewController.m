//
//  ZYLeftViewController.m
//  ZYSliderViewController
//
//  Created by zY on 16/11/10.
//  Copyright © 2016年 zY. All rights reserved.
//

#import "ZYLeftViewController.h"
#import "ZYTempViewController.h"
#import "UIViewController+ZYSliderViewController.h"
#import "ZYSliderViewController.h"

@interface ZYLeftViewController () <UITableViewDelegate,UITableViewDataSource>
{
    NSArray *_dataSource;
}
@end

@implementation ZYLeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *backImgView = [[UIImageView alloc] init];
    backImgView.image = [UIImage imageNamed:@"left_slider_back"];
    backImgView.frame = self.view.bounds;
    backImgView.userInteractionEnabled = YES;
    [self.view addSubview:backImgView];
    
    CGRect tableFrame = (CGRect){10,260,120,200};
    UITableView *tableView = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    tableView.backgroundColor = [UIColor clearColor];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.rowHeight = 44.f;
    [backImgView addSubview:tableView];
    
    _dataSource = @[@"个人中心",@"设置",@"关于"];
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
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.backgroundColor = [UIColor clearColor];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [[self sliderViewController] hideLeft];

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    ZYTempViewController *controller = [[ZYTempViewController alloc] init];
//    [[self sliderNavigationController] pushViewController:controller animated:YES];
    [[self sliderViewController].sliderNavigationController pushViewController:controller animated:YES];
}


@end
