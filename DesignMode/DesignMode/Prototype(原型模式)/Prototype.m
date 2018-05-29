//
//  Prototype.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "Prototype.h"

@implementation Prototype
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"my name is prototype";
    }
    return self;
}

//实现NSCopying协议
-(id)copyWithZone:(NSZone *)zone{
    return [[[self class] allocWithZone:zone] init];
}
@end
