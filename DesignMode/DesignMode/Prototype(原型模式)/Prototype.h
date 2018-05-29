//
//  Prototype.h
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prototype : NSObject<NSCopying>
/*设置一个属性，用来检测复制的变化*/
@property (nonatomic,strong) NSString *name;
@end
