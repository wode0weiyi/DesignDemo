//
//  FactoryMethodViewController.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "FactoryMethodViewController.h"
#import "BaseATableViewCell.h"
#import "BaseBTableViewCell.h"

@interface FactoryMethodViewController ()<UITableViewDelegate,UITableViewDataSource>
/*注释*/
@property (nonatomic,strong) UITableView *_tableView;
/*注释*/
@property (nonatomic,strong) NSArray *cellClass;
/*注释*/
@property (nonatomic,strong) NSArray *cellIdentifiers;

@end

@implementation FactoryMethodViewController

/*注释*/
- (NSArray *)cellClass
{
    if(!_cellClass){
        _cellClass = @[[BaseATableViewCell class],
                       [BaseBTableViewCell class]];
    }
    return _cellClass;
}

/*注释*/
- (NSArray *)cellIdentifiers
{
    if(!_cellIdentifiers){
        _cellIdentifiers = @[@"BaseATableViewCell",
                             @"BaseBTableViewCell"];
    }
    return _cellIdentifiers;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"工厂方法模式";
    self._tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    self._tableView.delegate = self;
    self._tableView.dataSource = self;
    for (int i = 0; i < self.cellClass.count; i ++) {
        [self._tableView registerClass:self.cellClass[i] forCellReuseIdentifier:self.cellIdentifiers[i]];
    }
    [self.view addSubview:self._tableView];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.cellClass.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BaseTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifiers[indexPath.row] forIndexPath:indexPath];
    [cell cofigUi:nil];
    return cell;
}
@end
