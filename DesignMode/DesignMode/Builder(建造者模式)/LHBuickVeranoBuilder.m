//
//  LHBuickVeranoBuilder.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "LHBuickVeranoBuilder.h"

@implementation LHBuickVeranoBuilder
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"别克威朗";
        self.level = @"A+级车";
        self.price = @"13.59-19.99万";
    }
    return self;
}
@end
