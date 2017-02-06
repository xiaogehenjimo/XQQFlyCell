//
//  mainViewController.m
//  XQQFlyCell
//
//  Created by XQQ on 16/8/16.
//  Copyright © 2016年 UIP. All rights reserved.
//

#import "mainViewController.h"
#import "UIPHttpRequest.h"
#import "XQQMessageModel.h"
#import "XQQFlyProjCell.h"
@interface mainViewController ()<UITableViewDataSource,UITableViewDelegate>
/**
 *  tabelView
 */
@property (nonatomic, strong)  UITableView      *myTabelView;
/**
 *  数据源
 */
@property (nonatomic, strong)  NSMutableArray   *dataArr;

@end


@implementation mainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    /**
     *  请求数据
     */
    [self requestData];
    
    [self.view addSubview:self.myTabelView];
    
}

- (void)requestData{
    NSString * requestStr = @"http://www.uipower.com/test/mobileTest.json";
    [UIPHttpRequest startRequestFromUrl:requestStr AndParameter:@{} returnData:^(NSData *resultData, NSError *error) {
        if (!error) {
            NSArray * resultArr = [NSJSONSerialization JSONObjectWithData:resultData options:NSUTF8StringEncoding error:nil];
            /**
             *  model赋值
             */
            for (NSDictionary * item in resultArr) {
                XQQMessageModel * model = [[XQQMessageModel alloc]init];
                [model setValuesForKeysWithDictionary:item];
                [self.dataArr addObject:model];
            }
            [self.myTabelView reloadData];
        }else
        {
            NSLog(@"%@",error.description);
        }
        
    }];
}



#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * idStr = @"XQQDemo";
    XQQFlyProjCell * cell = [tableView dequeueReusableCellWithIdentifier:idStr];
    if (!cell) {
        cell = [[XQQFlyProjCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idStr];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    [cell loadDataWithModel:self.dataArr[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DRotate(transform, 0, 0, 0, 1);//渐变
    transform = CATransform3DTranslate(transform, -200, 0, 0);//左边水平移动
//    transform = CATransform3DScale(transform, 0, 0, 0);//由小变大
    
    cell.layer.transform = transform;
    cell.layer.opacity = 0.0;
    
    [UIView animateWithDuration:0.3 animations:^{
        cell.layer.transform = CATransform3DIdentity;
        cell.layer.opacity = 1;
    }];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 110.0;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

#pragma mark - activity


#pragma mark - setter&getter

- (NSMutableArray *)dataArr
{
    if (!_dataArr) {
        _dataArr = @[].mutableCopy;
    }
    return _dataArr;
}

- (UITableView *)myTabelView
{
    if (!_myTabelView) {
        _myTabelView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
        _myTabelView.delegate = self;
        _myTabelView.dataSource = self;
    }
    return _myTabelView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
