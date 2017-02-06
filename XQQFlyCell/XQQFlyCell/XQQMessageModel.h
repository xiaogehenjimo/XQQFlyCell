//
//  XQQMessageModel.h
//  XQQFlyCell
//
//  Created by XQQ on 16/8/16.
//  Copyright © 2016年 UIP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface XQQMessageModel : NSObject
/**
 *  跳转到详情的链接
 */
@property (nonatomic, copy)  NSString  *  content;
/**
 *  内容
 */
@property (nonatomic, copy)  NSString  *  name;
/**
 *  图片链接
 */
@property (nonatomic, copy)  NSString  *  pic;
/**
 *  cell高度
 */
@property(nonatomic, assign)  CGFloat   cellHeight;
/**
 * nameLabel的高度
 */
@property(nonatomic, assign)  CGFloat   nameLabelHeight;

//- (void)initMessageWithDict:(NSDictionary*)dict;

@end
