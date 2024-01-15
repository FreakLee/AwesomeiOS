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
        int outsideValue = 10;
        
        void (^myBlock)(void) = ^{
            NSLog(@"Captured value: %d", outsideValue);
        };
        
        outsideValue = 20;
        myBlock(); // 输出 Captured value: 10
    }
    return 0;
}
