//
//  LHBuickCar.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

/*
1.Builder：为创建一个产品对象的各个部件指定抽象接口（LHBuickBuilder），宣传册的固定格式。
2.ConcreteBuilder：具体产品的建造类（LHBuickExcelleGTBuilder、LHBuickVeranoBuilder、LHBuickRegalBuilder、LHBuickLacrosseBuilder），可以理解成具体某辆车的宣传册。
3.Director：构造一个使用Builder接口的对象，这里指的就是4S店的销售。
4.Product：表示被构造的复杂对象（我想了解的哪个配置的汽车）。
*/



#import "LHBuickCar.h"

@implementation LHBuickCar
- (NSString *)description{
    return [NSString stringWithFormat:@"我是一辆：%@ %@车，价格%@",self.name,self.level,self.price];
}
@end
