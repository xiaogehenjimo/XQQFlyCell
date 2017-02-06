//
//  XQQMessageModel.m
//  XQQFlyCell
//
//  Created by XQQ on 16/8/16.
//  Copyright © 2016年 UIP. All rights reserved.
//

#import "XQQMessageModel.h"
#define iphoneWidth  [UIScreen mainScreen].bounds.size.width
#define iphoneHeight [UIScreen mainScreen].bounds.size.height
@implementation XQQMessageModel


- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}

- (id)valueForUndefinedKey:(NSString *)key{
    return nil;
}


//- (void)initMessageWithDict:(NSDictionary*)dict
//{
//    _content = dict[@"content"];
//    _name = dict[@"name"];
//    _pic = dict[@"pic"];
//    _cellHeight = [self getCellHeightWithStr:dict[@"name"]];
//    
//}
//
//- (CGFloat)getCellHeightWithStr:(NSString*)str
//{
//    CGFloat h = 0;
//    
//    CGSize size = [str boundingRectWithSize:CGSizeMake(iphoneWidth-100, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:18]} context:nil].size;
//    self.nameLabelHeight = size.height;
//    h = size.height + (iphoneWidth-80)/1.631579 + 155 + 40;
//    return h;
//}
//
//- (void)setValue:(id)value forUndefinedKey:(NSString *)key
//{
//    
//}
//- (instancetype)valueForUndefinedKey:(NSString *)key
//{
//    return nil;
//}

@end
