//
//  CustomClass.m
//  runtime_study
//
//  Created by babywolf on 16/3/10.
//  Copyright © 2016年 com.babywolf. All rights reserved.
//

#import "CustomClass.h"

@implementation CustomClass

- (void)func1 {
    NSLog(@"%@-----fun1",[self class]);
}

- (void)func2 {
    NSLog(@"%@-----fun2",[self class]);
}

@end
