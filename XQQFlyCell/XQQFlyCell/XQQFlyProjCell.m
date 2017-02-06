//
//  XQQFlyProjCell.m
//  XQQFlyCell
//
//  Created by XQQ on 16/8/16.
//  Copyright © 2016年 UIP. All rights reserved.
//

#import "XQQFlyProjCell.h"
#import "UIImageView+WebCache.h"


#define iphoneWidth  [UIScreen mainScreen].bounds.size.width
#define iphoneHeight [UIScreen mainScreen].bounds.size.height
@implementation XQQFlyProjCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //左侧imageView
        _iconImageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 5, 80, 80)];
        //_iconImageView.backgroundColor = [UIColor redColor];
        _iconImageView.layer.cornerRadius = 38;
        _iconImageView.layer.masksToBounds = YES;
        
        //右侧label
        _nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_iconImageView.frame) + 10, 15, iphoneWidth - 10 - 80 - 10 -10 -10, 44)];
        //_nameLabel.backgroundColor = [UIColor yellowColor];
        _nameLabel.textAlignment = NSTextAlignmentCenter;
        _nameLabel.textColor = [UIColor blackColor];
        
        [self.contentView addSubview:_iconImageView];
        [self.contentView addSubview:_nameLabel];
        
    }
    return self;
}
- (void)loadDataWithModel:(XQQMessageModel*)model{

    [_iconImageView sd_setImageWithURL:[NSURL URLWithString:model.pic]];
    _nameLabel.text = model.name;
}

@end
