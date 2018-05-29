//
//  ViewController.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "ViewController.h"
#import "PrototyoeViewController.h"
#import "SingletonViewController.h"
#import "FactoryMethodViewController.h"
#import "BuilderViewController.h"

#define IDENTIFIER @"tableViewCell"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *_tableView;
/*注释*/
@property (nonatomic,strong) NSMutableArray *dataAry;
@end

@implementation ViewController


/*注释*/
- (NSMutableArray *)dataAry
{
    if(!_dataAry){
        _dataAry = [NSMutableArray arrayWithObjects:@"原型模式（Prototype）",@"单例模式（Singleton）",@"工厂方法模式（FactoryMethod）",@"建造者模式（Builder）",@"",@"",@"",@"",@"",@"", nil];
    }
    return _dataAry;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self._tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:IDENTIFIER];
}


#pragma mark - 代理协议
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataAry.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:IDENTIFIER forIndexPath:indexPath];
    cell.textLabel.text = self.dataAry[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
        {
            PrototyoeViewController * viewController = [[PrototyoeViewController alloc] init];
            
            [self.navigationController pushViewController:viewController animated:true];
        }
            break;
        case 1:
        {
            SingletonViewController * viewController = [[SingletonViewController alloc] init];
            [self.navigationController pushViewController:viewController animated:true];
        }
            break;
        case 2:
        {
            FactoryMethodViewController * viewController = [[FactoryMethodViewController alloc] init];
            [self.navigationController pushViewController:viewController animated:true];
        }
            break;
        case 3:
        {
            BuilderViewController * viewController = [[BuilderViewController alloc] init];
            [self.navigationController pushViewController: viewController animated:true];
        }
            break;
        case 4:
            
            break;
        case 5:
            
            break;
        case 6:
            
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
