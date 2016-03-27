//
//  XGTool.m
//  Objective-C_XGStaticFramework
//
//  Created by Yuen on 16/3/26.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#import "XGTool.h"

@implementation XGTool

/*
 每一个设备都有属于自己的CPU架构(4s/6plus)
 每一个静态支持的架构是固定(liblibstatic.a)
 查看静态库支持的架构:lipo -info liblibstatic.a
 
 静态库合并:
 lipo -create 静态库1 静态库2 -output 新的静态库
 
 模拟器
 4s-->5 : i386
 5s-->6plus : x86_64
 
 真机
 3gs-->4s : armv7
 5/5c : armv7s,静态库只要支持了armv7,就可以跑在armv7s的架构上
 5s-->6plus : arm64
 */
+ (void)logFunctionName {
    NSLog(@"%s", __FUNCTION__);
    NSLog(@"%s", __FUNCTION__);
}

@end
