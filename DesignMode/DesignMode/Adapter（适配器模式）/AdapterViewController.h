//
//  AdapterViewController.h
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/30.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol AdapterViewProtocol
-(NSString *)name;
-(NSString *)photoNum;
-(UIColor *)lineColor;
@end


@interface AdapterViewController : UIViewController
/*注释*/
@property (nonatomic , copy) NSString *name;
/*注释*/
@property (nonatomic , copy) NSString *phoneNum;
/*注释*/
@property (nonatomic,strong) UIColor *lineColor;

- (void)loadData:(id<AdapterViewProtocol>)data;

@end
