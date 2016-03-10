//
//  main.m
//  runtime_study
//
//  Created by babywolf on 16/3/10.
//  Copyright © 2016年 com.babywolf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomClass.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        CustomClass *obj = [CustomClass new];
        NSLog(@"%p",&obj);
        
        //arc下无法copy
//        id other = object_copy(obj,sizeof(obj));
//        NSLog(@"%p",&other);
        
        
    }
    return 0;
}
