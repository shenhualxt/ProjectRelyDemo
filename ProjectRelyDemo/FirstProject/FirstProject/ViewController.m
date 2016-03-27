//
//  ViewController.m
//  FirstProject
//
//  Created by Terry on 16/3/27.
//  Copyright © 2016年 sina. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

//在Header search Path中添加library路径时，选择的是none-recursive(即没有路径的递归，所以在这里导入头文件是加上了文件夹路径) 和SecondProject 对比
#import <Business_lib/Business_lib.h>
#import <Base_lib/Base_lib.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *testLabel=[UILabel new];
    testLabel.text=@"布局是通过CoccoaPods管理的Masonry方式布局\n";
    [self.view addSubview:testLabel];
    
    [testLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(testLabel.superview);
        make.centerY.equalTo(testLabel.superview);
    }];
    
    [Business_lib testMethod];
    
    
    [Base_lib testMethod];
    
    NSLog(@"project dir=%@, BUILD_ROOT_=%@", PROJECT_DIR, BUILD_ROOT);
}


@end
