//
//  UIView+LHHGetCurrentViewOfController.m
//  重叠
//
//  Created by leihuan on 16/7/10.
//  Copyright © 2016年 leihuan. All rights reserved.
//

#import "UIView+LHHGetCurrentViewOfController.h"

@implementation UIView (LHHGetCurrentViewOfController)
-(UIViewController *)getCurrentViewOfController{
    UIResponder *next = [self nextResponder];
    do {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        }
        next = [next nextResponder];
    } while (next != nil);
    return nil;
}

@end
