//
//  ViewController.m
//  Singleton
//
//  Created by mac on 15/6/13.
//  Copyright (c) 2015年 CC. All rights reserved.
//

#import "ViewController.h"
#import "SingletonDemoObj.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //测试返回的是否是单例
    for (int i = 0; i < 10; i++) {
        SingletonDemoObj *instance = [SingletonDemoObj sharedSingletonDemoObj];
        NSLog(@"%@",instance);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    int largeNumber = 1000 * 1000;
    
    //互斥锁
    NSLog(@"互斥锁");
    CFAbsoluteTime start = CFAbsoluteTimeGetCurrent();
    for (int i = 0; i < largeNumber; i++) {
        [SingletonDemoObj sharedSingletonDemoObj];
    }
    NSLog(@"%f",CFAbsoluteTimeGetCurrent() - start);
    
    //dispatch_once
    NSLog(@"dispatch_once");
    start = CFAbsoluteTimeGetCurrent();
    for (int i = 0; i < largeNumber; i++) {
        [SingletonDemoObj sharedSingletonDemoObj2];
    }
    NSLog(@"%f",CFAbsoluteTimeGetCurrent() - start);
}

@end
