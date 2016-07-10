//
//  UIView+LHHRectIsIntersectsRect.m
//  重叠
//
//  Created by leihuan on 16/7/10.
//  Copyright © 2016年 leihuan. All rights reserved.
//

#import "UIView+LHHRectIsIntersectsRect.h"
#import "UIView+LHHGetCurrentViewOfController.h"

@implementation UIView (LHHRectIsIntersectsRect)

- (BOOL)intersectWithView:(UIView *)view {
    
    // 以形参view所在的控制器为基准
    UIViewController *viewOfController = [view getCurrentViewOfController];
    
    // 方法的调用者相对于形参view所在的控制器里的view的frame
    CGRect newRectOne = [self convertRect:self.bounds toView:viewOfController.view];
    
    // 形参view相对于自己所在的控制器里的view的frame
    CGRect newRectTwo = [view convertRect:view.bounds toView:viewOfController.view];
    
    // 以形参view所在的控制器为基准的相同坐标系下，newRectOne与newRectTwo是否有交叉
    return CGRectIntersectsRect(newRectOne, newRectTwo);
    
}

@end
