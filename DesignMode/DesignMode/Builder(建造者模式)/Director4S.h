//
//  Director4S.h
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//


//汽车销售


#import <Foundation/Foundation.h>
#import "LHBuickCar.h"
#import "LHBuickBuilder.h"

@interface Director4S : NSObject
+(LHBuickCar *)creatBuickCar:(LHBuickBuilder *)builder;
@end
