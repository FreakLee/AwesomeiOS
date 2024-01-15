//
//  Person.m
//  Block01
//
//  Created by min Lee on 2018/6/15.
//  Copyright © 2018年 min Lee. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)dealloc {
    NSLog(@"Person-dealloc");
}

- (void)test {
    //使用__weak或者__unsafe_unretained解决
    //__unsafe_unretained typeof(self) weakSelf = self;
//    __weak typeof(self) weakSelf = self;
//    self.block = ^{
//        __strong typeof(self) strongSelf = weakSelf;
//        NSLog(@"age is %lu", strongSelf->_age);
//    };
    
    
    //使用__block解决，必须调用block，且在block内部将__block变量置为nil
    __block id weakSelf = self;
    self.block = ^{
        __strong typeof(self) strongSelf = weakSelf;
        NSLog(@"age is %lu", strongSelf->_age);
        weakSelf = nil;//不能少
    };
    self.block();
    
}

@end
