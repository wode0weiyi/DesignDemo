//
//  Director4S.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "Director4S.h"

@implementation Director4S
+ (LHBuickCar *)creatBuickCar:(LHBuickBuilder *)builder{
    LHBuickCar * car = [builder makeBuickCar];
    return car;
}
@end
