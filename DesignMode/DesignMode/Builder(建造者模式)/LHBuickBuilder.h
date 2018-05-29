//
//  LHBuickBuilder.h
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//


//汽车款型的参数


#import <Foundation/Foundation.h>
#import "LHBuickCar.h"

@interface LHBuickBuilder : NSObject
/*注释*/
@property (nonatomic , copy) NSString *name;
/*注释*/
@property (nonatomic , copy) NSString *level;
/*注释*/
@property (nonatomic , copy) NSString *price;

-(LHBuickCar *)makeBuickCar;

@end
