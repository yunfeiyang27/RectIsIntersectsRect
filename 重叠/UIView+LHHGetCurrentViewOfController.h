//
//  UIView+LHHGetCurrentViewOfController.h
//  重叠
//
//  Created by leihuan on 16/7/10.
//  Copyright © 2016年 leihuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LHHGetCurrentViewOfController)
/** 获取当前View的控制器对象 */
-(UIViewController *)getCurrentViewOfController;
@end
