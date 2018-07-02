//
//  Adapter.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/30.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "Adapter.h"

@implementation Adapter
-(instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        self.data = data;
    }
    return self;
}

-(NSString *)name{
    return nil;
}

-(NSString *)photoNum{
    return nil;
}

- (UIColor *)lineColor{
    return nil;
}

@end
