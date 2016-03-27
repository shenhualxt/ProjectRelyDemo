//
//  Base_lib.m
//  Base_lib
//
//  Created by Terry on 16/3/27.
//  Copyright © 2016年 sina. All rights reserved.
//

#import "Base_lib.h"
#import <ReactiveCocoa.h>

@implementation Base_lib

+(void)testMethod{
    //测试在Project中调用library方法
    NSLog(@"logged from Base_lib");
    
    //测试在Library中使用第三方库
    RACSignal *testSignal=[@"A B C D E" componentsSeparatedByString:@" "].rac_sequence.signal;
    [testSignal subscribeNext:^(id x) {
        NSLog(@"in Base_lib: %@",x);
    }];
}

@end
