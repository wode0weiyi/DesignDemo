//
//  PrototyoeViewController.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "PrototyoeViewController.h"

@interface PrototyoeViewController ()

@end

@implementation PrototyoeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"原型模式";
    self.view.backgroundColor = [UIColor whiteColor];
//    创建实例
    Prototype * prototype = [[Prototype alloc] init];
//    通过copy深复制出一个新对象
    Prototype * deepPrototype = [prototype copy];
//    通过prototype直接赋值，其实就是复制了指针(可以理解为取了个别名)，属于浅复制，引用计数不变
    Prototype * shallPrototype = prototype;
    NSLog(@"修改前=============");
    NSLog(@"原始对象 = %p,%@",prototype,prototype.name);
    NSLog(@"深拷贝对象 = %p,%@",deepPrototype,deepPrototype.name);
    NSLog(@"浅拷贝对象 = %p,%@",shallPrototype,shallPrototype.name);
    for (int i = 0; i < 3; i ++) {
        UILabel * lable = [[UILabel alloc] initWithFrame:CGRectMake(10, 70 + 40 * i, 300, 30)];
        NSString * str = @"";
        lable.numberOfLines = 2;
        lable.font = [UIFont systemFontOfSize:12];
        if (i == 0) {
            str = [NSString stringWithFormat:@"原对象：%@p,%@",prototype,prototype.name];
        }else if (i == 1){
            str = [NSString stringWithFormat:@"深拷贝：%@p,%@",deepPrototype,deepPrototype.name];
        }else{
            str = [NSString stringWithFormat:@"浅拷贝：%@p,%@",shallPrototype,shallPrototype.name];
        }
        lable.text = str;
        [self.view addSubview:lable];
    }
//    修改name属性
    prototype.name = @"my name is new peototype";
//    修改实例的name 属性后
    NSLog(@"修改后=============");
    NSLog(@"原始对象 = %p,%@",prototype,prototype.name);
    NSLog(@"深拷贝对象 = %p,%@",deepPrototype,deepPrototype.name);
    NSLog(@"浅拷贝对象 = %p,%@",shallPrototype,shallPrototype.name);
    
    for (int i = 0; i < 3; i ++) {
        UILabel * lable = [[UILabel alloc] initWithFrame:CGRectMake(10, 180 + 40 * i, 300, 30)];
        lable.font = [UIFont systemFontOfSize:12];
        lable.numberOfLines = 2;
        NSString * str = @"";
        if (i == 0) {
            str = [NSString stringWithFormat:@"原对象：%@p,%@",prototype,prototype.name];
        }else if (i == 1){
            str = [NSString stringWithFormat:@"深拷贝：%@p,%@",deepPrototype,deepPrototype.name];
        }else{
            str = [NSString stringWithFormat:@"浅拷贝：%@p,%@",shallPrototype,shallPrototype.name];
        }
        lable.text = str;
        [self.view addSubview:lable];
    }
}


@end
