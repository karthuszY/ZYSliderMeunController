//
//  ZYRightViewController.m
//  ZYSliderViewController
//
//  Created by zY on 16/11/11.
//  Copyright © 2016年 zY. All rights reserved.
//

#import "ZYRightViewController.h"

@interface ZYRightViewController ()

@end

@implementation ZYRightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *backImgView = [[UIImageView alloc] init];
    backImgView.image = [UIImage imageNamed:@"right_slider_back"];
    backImgView.frame = self.view.bounds;
    [self.view addSubview:backImgView];
}

@end
