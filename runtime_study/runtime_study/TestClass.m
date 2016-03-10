//
//  TestClass.m
//  runtime_study
//
//  Created by babywolf on 16/3/10.
//  Copyright © 2016年 com.babywolf. All rights reserved.
//

#import "TestClass.h"
#import "CustomClass.h"
#import <objc/runtime.h>

@implementation TestClass

- (void) getClassTest {
    CustomClass *obj = [CustomClass new];
    Class aClass = object_getClass(obj);
    NSLog(@"%@",NSStringFromClass(aClass));
}

- (void) getClassName {
    CustomClass *obj = [CustomClass new];
    NSString *className = [NSString stringWithCString:object_getClassName(obj) encoding:NSUTF8StringEncoding];
    NSLog(@"className:%@",className);
}

@end
