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

/*
 调试版本 VS 发布版本
 --------------------------------------------------------------------------------
 - 调试版本会包含完整的符号信息，以方便调试
 - 调试版本不会对代码进行优化
 
 - 发布版本不会包含完整的符号信息
 - 发布版本的执行代码是进行过优化的
 - 发布版本的大小会比调试版本的略小
 - 在执行速度方面，发布版本会更快些，但不意味着会有显著的提升

 */
+ (void)logFunctionName {
    NSLog(@"%s", __FUNCTION__);
    NSLog(@"%s", __FUNCTION__);
}

@end
