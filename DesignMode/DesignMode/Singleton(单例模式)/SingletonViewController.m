//
//  SingletonViewController.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "SingletonViewController.h"

@interface SingletonViewController ()

@end

@implementation SingletonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"单例模式";
    NSString * str = @"单例模式格式如下：\n + (Singleton*)shareInstence{\n static Singleton * share = nil;/n static dispatch_once_t onceToken;\n dispatch_once(&onceToken, ^{\n if (share == nil) {\n share = [[Singleton alloc] init];\n }\n });\n return share;\n }";
    UILabel * lable = [[UILabel alloc] initWithFrame:CGRectMake(10, 70, 300, 400)];
    lable.font = [UIFont systemFontOfSize:12];
    lable.numberOfLines = 0;
    lable.text = str;
    [self.view addSubview:lable];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
