//
//  BuilderViewController.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//



/*
 *建造模式的参考网址：https://www.jianshu.com/p/4f1d26704915
 *
 *
 *
 **/



#import "BuilderViewController.h"
#import "Director4S.h"
#import "LHBuickBuilder.h"
#import "LHBuickCar.h"
#import "LHBuickVeranoBuilder.h"
#import "LHBuickRegalBuilder.h"
#import "LHBuickExcelleGTBuilder.h"

@interface BuilderViewController ()
/*注释*/
@property (nonatomic,strong) UILabel *desLab;
@end

@implementation BuilderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"建造者模式";
    self.view.backgroundColor = [UIColor whiteColor];
   self.desLab = [[UILabel alloc] initWithFrame:CGRectMake(10, 250, 300, 200)];
    self.desLab.numberOfLines = 0;
    self.desLab.font = [UIFont systemFontOfSize:13.f];
    [self.view addSubview:self.desLab];
    
    UIButton * button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(0, 70, 100, 40);
    [button1 setTitle:@"A级车" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(clickCarBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton * button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(0, 120, 100, 40);
    [button2 setTitle:@"A+级车" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(clickCarBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    
    UIButton * button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake(0, 170, 100, 40);
    [button3 setTitle:@"B级车" forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(clickCarBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
    
}

- (void)clickCarBtn:(UIButton *)sender{
    NSString * title = [sender titleForState:UIControlStateNormal];
    if ([title isEqualToString: @"A级车"]) {
        LHBuickBuilder * buickBuilder = [[LHBuickExcelleGTBuilder alloc] init];
        LHBuickCar * car = [Director4S creatBuickCar:buickBuilder];
        self.desLab.text = car.description;
    }else if ([title isEqualToString:@"A+级车"]){
        LHBuickBuilder * buickBuilder = [[LHBuickVeranoBuilder alloc] init];
        LHBuickCar * car = [Director4S creatBuickCar:buickBuilder];
        self.desLab.text = car.description;
    }else{
        LHBuickBuilder * buickBuilder = [[LHBuickRegalBuilder alloc] init];
        LHBuickCar * car = [Director4S creatBuickCar:buickBuilder];
        self.desLab.text = car.description;
    }
}


@end
