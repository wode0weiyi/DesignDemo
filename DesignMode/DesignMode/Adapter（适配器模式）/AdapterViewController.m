//
//  AdapterViewController.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/30.
//  Copyright © 2018年 胡志辉. All rights reserved.
//





/**
 *适配器模式说明：
 *Adapter类：基类适配器，遵从AdapterViewController的AdapterViewProtocol协议，并会初始化一个initWithData: 的方法
 *ModalAdapter类：就是连接适配器的具体modal，继承于Adapter，并且内部实现了Adapter类中的初始化方法，和重写代理协议AdapterViewProtocol方法.
 *AdapterModal类：是一个数据modal类，用于数据的交接
 *AdapterViewController类：是一个控制器，也就是UI控件类，显示界面；
 */







#import "AdapterViewController.h"
#import "AdapterModal.h"
#import "ModalAdapter.h"

@interface AdapterViewController ()
@property (weak, nonatomic) IBOutlet UILabel *_nameLab;
@property (weak, nonatomic) IBOutlet UILabel *photoNumLab;
@property (weak, nonatomic) IBOutlet UIButton *_changeModalBtn;

@end

@implementation AdapterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AdapterModal * modal = [[AdapterModal alloc] init];
    modal.name = @"小名";
    modal.photoNum = @"111-1111-1111";
    
    ModalAdapter * adapter = [[ModalAdapter alloc] initWithData:modal];
    [self loadData:adapter];
}

-(void)loadData:(id<AdapterViewProtocol>)data{
    self._nameLab.text = [data name];
    self.photoNumLab.text = [data photoNum];
}

- (IBAction)changeModalBtnClick:(UIButton *)sender {
    AdapterModal * modal = [[AdapterModal alloc] init];
    modal.name = @"小红";
    modal.photoNum = @"222-2222-2222";
    ModalAdapter * adapter = [[ModalAdapter alloc] initWithData:modal];
    [self loadData:adapter];
}

@end
