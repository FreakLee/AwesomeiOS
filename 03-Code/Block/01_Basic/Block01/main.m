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
        
        void (^block)(void) = ^{
            NSLog(@"Hello, World!");
        };
        
        block();
        NSLog(@"%@ %@",[block class],[block superclass] );//__NSGlobalBlock__
    }
    return 0;
}
