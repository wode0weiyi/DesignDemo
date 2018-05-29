//
//  LHBuickBuilder.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "LHBuickBuilder.h"

@implementation LHBuickBuilder
-(LHBuickCar *)makeBuickCar{
    LHBuickCar * car = [[LHBuickCar alloc] init];
    car.name = self.name;
    car.level = self.level;
    car.price = self.price;
    return car;
}
@end
