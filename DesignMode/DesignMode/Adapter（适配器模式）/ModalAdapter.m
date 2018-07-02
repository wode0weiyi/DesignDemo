//
//  ModalAdapter.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/30.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "ModalAdapter.h"
#import "AdapterModal.h"

@implementation ModalAdapter
- (instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        self.data = data;
    }
    return self;
}

-(NSString *)name{
    AdapterModal * modal = self.data;
    return modal.name;
}

-(NSString *)photoNum{
    AdapterModal * modal = self.data;
    return modal.photoNum;
}

- (UIColor *)lineColor{
    AdapterModal * modal = self.data;
    return modal.lineColor;
}
@end
