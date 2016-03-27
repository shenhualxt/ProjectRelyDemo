//
//  ViewController.m
//  SecondProject
//
//  Created by Terry on 16/3/27.
//  Copyright © 2016年 sina. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
//在Header search Path中添加library路径时，选择的是recursive(即有路径的递归，所以在这里导入头文件是没有加上了文件夹路径) 和FirstProject 对比
#import <Business_lib.h>
#import <Base_lib/Base_lib.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *testLabel=[UILabel new];
    testLabel.text=@"通过CoccoaPods管理的Masonry方式布局\n";
    [self.view addSubview:testLabel];
    
    [testLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(testLabel.superview);
        make.centerY.equalTo(testLabel.superview);
    }];
    
    [Business_lib testMethod];
    
    [Base_lib testMethod];
}

@end
