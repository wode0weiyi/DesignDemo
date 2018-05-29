//
//  BaseBTableViewCell.m
//  DesignMode
//
//  Created by 胡志辉 on 2018/5/29.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "BaseBTableViewCell.h"

@implementation BaseBTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)cofigUi:(id)mode{
    self.textLabel.text = @"BaseBTableViewCell.h";
}

@end
