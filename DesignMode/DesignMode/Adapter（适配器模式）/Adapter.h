//
//  Adapter.h
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/30.
//  Copyright © 2018年 胡志辉. All rights reserved.
//



/**
 *Adapter 遵从 AdapterViewController的AdapterViewProtocol协议，并自定义个初始化方法：initWithData
 *在.m文件里实现AdapterViewProtocol协议里的代理方法，这里返回nil，在继承Adapter的子类里会重写；
 */


#import <Foundation/Foundation.h>
#import "AdapterViewController.h"

@interface Adapter : NSObject<AdapterViewProtocol>
/*注释*/
@property (nonatomic,weak) id data;

-(instancetype)initWithData:(id)data;

@end
