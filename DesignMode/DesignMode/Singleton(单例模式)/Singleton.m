//
//  Singleton.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton
+ (Singleton*)shareInstence{
    static Singleton * share = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (share == nil) {
            share = [[Singleton alloc] init];
        }
    });
    return share;
}
@end
