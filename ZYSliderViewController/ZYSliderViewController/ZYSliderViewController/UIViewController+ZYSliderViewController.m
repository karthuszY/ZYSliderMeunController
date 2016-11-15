//
//  UIViewController+ZYSliderViewController.m
//  ZYSliderViewController
//
//  Created by zY on 16/11/14.
//  Copyright © 2016年 zY. All rights reserved.
//

#import "UIViewController+ZYSliderViewController.h"
#import "ZYSliderViewController.h"

@implementation UIViewController (ZYSliderViewController)

- (ZYSliderViewController *)sliderViewController
{
    UIViewController *viewcontroller = (UIViewController *)self.parentViewController;
    while (viewcontroller) {
        if ([viewcontroller isKindOfClass:[ZYSliderViewController class]]) {
            return (ZYSliderViewController *)viewcontroller;
        }else if (viewcontroller.parentViewController && viewcontroller.parentViewController!=viewcontroller){
            viewcontroller = (UIViewController *)viewcontroller.parentViewController;
        }else{
            return nil;
        }
    }
    return nil;
}

@end
