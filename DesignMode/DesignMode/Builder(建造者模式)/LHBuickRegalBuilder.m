//
//  LHBuickRegalBuilder.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "LHBuickRegalBuilder.h"

@implementation LHBuickRegalBuilder
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"别克君威";
        self.level = @"B级车";
        self.price = @"17.99-27.99万";
    }
    return self;
}
@end
