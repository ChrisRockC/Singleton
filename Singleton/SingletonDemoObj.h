//
//  SingletonDemoObj.h
//  Singleton
//
//  Created by mac on 15/6/13.
//  Copyright (c) 2015年 CC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonDemoObj : NSObject

//共享实例，便于其他类访问
+(instancetype)sharedSingletonDemoObj;

+(instancetype)sharedSingletonDemoObj2;

@end
