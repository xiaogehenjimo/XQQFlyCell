//
//  XQQFlyProjCell.h
//  XQQFlyCell
//
//  Created by XQQ on 16/8/16.
//  Copyright © 2016年 UIP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XQQMessageModel.h"
@interface XQQFlyProjCell : UITableViewCell

/**
 *  左侧图片
 */
@property(nonatomic, strong)  UIImageView  *  iconImageView;
/**
 *  右侧label
 */
@property(nonatomic, strong)  UILabel  *  nameLabel;

- (void)loadDataWithModel:(XQQMessageModel*)model;

@end
