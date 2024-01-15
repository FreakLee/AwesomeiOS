//
//  main.m
//  Block01
//
//  Created by min Lee on 2018/6/13.
//  Copyright © 2018年 min Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        __block int count = 0;
        void (^increment)(void) = ^{
            count++;
        };
    
        increment();  // 调用Block，增加count的值
        NSLog(@"Count: %d", count);  // 输出 Count: 1
    }
    return 0;
}
