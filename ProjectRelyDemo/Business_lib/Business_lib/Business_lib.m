//
//  Business_lib.m
//  Business_lib
//
//  Created by Terry on 16/3/27.
//  Copyright © 2016年 sina. All rights reserved.
//

#import "Business_lib.h"
#import <ReactiveCocoa.h>
#import <Base_lib/Base_lib.h>

@implementation Business_lib

+(void)testMethod{
    //测试在Project中调用library方法
    NSLog(@"logged from Business_lib");
    
    [Base_lib testMethod];

    //测试在Library中使用第三方库
    RACSignal *testSignal=[@"A B C D E" componentsSeparatedByString:@" "].rac_sequence.signal;
    [testSignal subscribeNext:^(id x) {
        NSLog(@"in Business_lib:%@",x);
    }];
}

@end
