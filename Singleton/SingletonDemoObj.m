//
//  SingletonDemoObj.m
//  Singleton
//
//  Created by mac on 15/6/13.
//  Copyright (c) 2015年 CC. All rights reserved.
//

#import "SingletonDemoObj.h"

@implementation SingletonDemoObj

//1.在iOS中，所有对象的内存控件的分配，最终都会调用此方法
//2.GCD 提供dispatch_once 用来创建单例
+(instancetype)allocWithZone:(struct _NSZone *)zone
{
    static SingletonDemoObj *instance;
    
    //onceToken默认为0 线程安全
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //该块代码只会被执行一次
        instance = [super allocWithZone:zone];
    });
    
    return instance;

}

+(instancetype)sharedSingletonDemoObj
{
    return [[self alloc] init];
}

@end
