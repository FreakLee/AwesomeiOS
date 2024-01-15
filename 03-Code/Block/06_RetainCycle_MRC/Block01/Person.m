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
    [super dealloc];
    NSLog(@"Person-dealloc");
}

- (void)test {
    //使用__unsafe_unretained解决
//    __unsafe_unretained id weakSelf = self;
//    self.block = ^{
//        NSLog(@"%p", weakSelf);
//    };
    
    
    //使用__block解决
    __block id weakSelf = self;
    self.block = ^{
        NSLog(@"%p", weakSelf);
    };
}

@end
