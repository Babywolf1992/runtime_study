//
//  main.m
//  runtime_study
//
//  Created by babywolf on 16/3/10.
//  Copyright © 2016年 com.babywolf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomClass.h"
#import "OtherClass.h"
#import "TestClass.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        CustomClass *obj = [CustomClass new];
        TestClass *testclass = [TestClass new];
        //arc下无法copy
//        NSLog(@"%p",&obj);
//        id other = object_copy(obj,sizeof(obj));
//        NSLog(@"%p",&other);
        
/*****************************  更改对象的类／获取对象的类  ******************************/
        //
//        Class aclass = object_setClass(obj, [OtherClass class]);
//        
//        NSLog(@"aclass:%@",NSStringFromClass(aclass));
//        NSLog(@"obj class:%@",NSStringFromClass([obj class]));
//        
//        TestClass *testclass = [TestClass new];
//        [testclass getClassTest];
        
/**********************  获取对象的类名  constchar *object_getClassName(id obj)  *********************/
//        [testclass getClassName];
        
        
        
/*****************************  给类增加一个方法  ******************************/
//        [testclass oneParam];
//        [testclass twoParam];

        
/*****************************  获取一个类的所有方法  ******************************/
        
//        [testclass getClassAllMethod];
        
        
/*****************************  获取一个类的所有属性  ******************************/
        
        [testclass propertyNameList];
        
        
    }
    return 0;
}



