//
//  ViewController.m
//  重叠
//
//  Created by leihuan on 16/7/10.
//  Copyright © 2016年 leihuan. All rights reserved.
//

#import "ViewController.h"
#import "UIView+LHHRectIsIntersectsRect.h"

@interface ViewController ()

@end

UIView *A;
UIView *B;
UIView *C;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    A = [[UIView alloc] init];//红
    B = [[UIView alloc] init];//蓝
    C = [[UIView alloc] init];//黄
    
    // A和C同级
    // B在C里
    
    A.backgroundColor = [UIColor redColor];
    B.backgroundColor = [UIColor blueColor];
    C.backgroundColor = [UIColor yellowColor];
    
    A.frame = CGRectMake(100, 100, 100, 100);
    
    C.frame = CGRectMake(200, 200, 100, 100);
    
    
    [self.view addSubview:A];
    [self.view addSubview:C];
    [C addSubview:B];
    B.frame = CGRectMake(50, 50, 50, 50);
    

    
    
    
    CGRect new1 = [B convertRect:B.bounds toView:self.view];
    
    CGRect new2 = [A convertRect:A.bounds toView:self.view];


    NSLog(@"B VS self.view --> new1:%@",NSStringFromCGRect(new1));

    NSLog(@"A VS self.view --> new2:%@",NSStringFromCGRect(new2));
    

    NSLog(@"new1,new2 CGRectIntersectsRect:%zd",CGRectIntersectsRect(new1,new2));

    NSLog(@"intersectWithView %zd",[A intersectWithView:B]);
    
 
}




@end
