//
//  main.m
//  Block01
//
//  Created by min Lee on 2018/6/13.
//  Copyright © 2018年 min Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^MyBlock)(void);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MyBlock block;
        {
            NSMutableArray *array = [NSMutableArray arrayWithObject:@1];
            __unsafe_unretained NSMutableArray *weakArray = array;
            block = ^{
                [weakArray addObject:@2];
                NSLog(@"Captured weakArray: %@", weakArray);//Captured array: (null)
            };
        }
        block();
    }
    return 0;
}
