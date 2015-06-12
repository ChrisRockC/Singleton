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

@end
