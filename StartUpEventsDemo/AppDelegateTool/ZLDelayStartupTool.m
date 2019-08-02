//
//  ZLDelayStartupTool.m
//  Tech-Demo
//
//  Created by 王泽龙 on 2018/5/29.
//  Copyright © 2018年 王泽龙. All rights reserved.
//

#import "ZLDelayStartupTool.h"
#import <UIKit/UIKit.h>

@implementation ZLDelayStartupTool

/**
 * 启动伴随 didFinishLaunchingWithOptions 启动的事件.
 * 启动类型为:日志 / 统计等需要第一时间启动的.
 */
+ (void)startupEventsOnAppDidFinishLaunchingWithOptions {
    
    dispatch_queue_t queue = dispatch_queue_create("startLaunchingQueue", DISPATCH_QUEUE_CONCURRENT);
    
    dispatch_async(queue, ^{
        NSLog(@"1--------------------------%@", [NSThread currentThread]);
        NSLog(@"2--------------------------%@", [NSThread currentThread]);
        NSLog(@"3--------------------------%@", [NSThread currentThread]);
    });
    
    dispatch_async(queue, ^{
        NSLog(@"4--------------------------%@", [NSThread currentThread]);
        NSLog(@"5--------------------------%@", [NSThread currentThread]);
        NSLog(@"6--------------------------%@", [NSThread currentThread]);
    });
    
    dispatch_async(queue, ^{
        NSLog(@"7--------------------------%@", [NSThread currentThread]);
        NSLog(@"8--------------------------%@", [NSThread currentThread]);
        NSLog(@"9--------------------------%@", [NSThread currentThread]);
    });
    
    NSLog(@"---------startupEventsOnAppDidFinishLaunchingWithOptions");
}

/**
 * 启动可以在展示广告的时候初始化的事件.
 * 启动类型为: 用户数据需要在广告显示完成以后使用, 所以需要伴随广告页启动.
 */
+ (void)startupEventsOnADTime {
}

/**
 * 启动在第一个界面显示完(用户已经进入主界面)以后可以加载的事件.
 * 启动类型为: 比如直播和分享等业务, 肯定是用户能看到真正的主界面以后才需要启动, 所以推迟到主界面加载完成以后启动.
 */
+ (void)startupEventsOnDidAppearAppContent {
    NSLog(@"viewWillAppear");
}

@end

