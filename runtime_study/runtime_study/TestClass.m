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

- (void)getClassTest {
    CustomClass *obj = [CustomClass new];
    Class aClass = object_getClass(obj);
    NSLog(@"%@",NSStringFromClass(aClass));
}

- (void)getClassName {
    CustomClass *obj = [CustomClass new];
    NSString *className = [NSString stringWithCString:object_getClassName(obj) encoding:NSUTF8StringEncoding];
    NSLog(@"className:%@",className);
}

int cfunction(id self, SEL _cmd, NSString *str) {
    NSLog(@"%@",str);
    return 10;
}

void cfunction2(id self, SEL _cmd, NSString *str, NSString *name) {
    NSLog(@"%@,%@",str,name);
}

- (void)oneParam {
    CustomClass *instance = [CustomClass new];
    class_addMethod([CustomClass class], @selector(ocMethod:), (IMP)cfunction, "i@:@");
    
    if ([instance respondsToSelector:@selector(ocMethod:)]) {
        [instance performSelector:@selector(ocMethod:) withObject:@"我是一个OC方法"];
    }else {
        NSLog(@"sorry");
    }
}

- (void)twoParam {
    CustomClass *instance = [CustomClass new];
    class_addMethod([CustomClass class], @selector(ocMethod::), (IMP)cfunction2, "v@:@@");
    
    if ([instance respondsToSelector:@selector(ocMethod::)]) {
        [instance performSelector:@selector(ocMethod::) withObject:@"welcome" withObject:@"wolf"];
    }else {
        NSLog(@"sorry");
    }
}

- (void)getClassAllMethod {
    u_int count;
    Method *methods = class_copyMethodList([NSString class], &count);
    for (int i = 0; i < count; i++) {
        SEL method = method_getName(methods[i]);
        NSString *str = [NSString stringWithCString:sel_getName(method) encoding:NSUTF8StringEncoding];
        NSLog(@"%@",str);
    }
}

- (void)propertyNameList {
    u_int count;
    objc_property_t *properties = class_copyPropertyList([NSString class], &count);
    for (int i = 0; i < count; i++) {
        const char* propertyName = property_getName(properties[i]);
        NSString *str = [NSString stringWithCString:propertyName encoding:NSUTF8StringEncoding];
        NSLog(@"%@",str);
    }
}

@end
