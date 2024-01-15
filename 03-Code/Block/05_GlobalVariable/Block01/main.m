//
//  main.m
//  Block01
//
//  Created by min Lee on 2018/6/13.
//  Copyright © 2018年 min Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

static int g_s_age = 5;
int g_age = 8;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void (^block) (void) = ^(){
            NSLog(@"%d-%d",g_s_age,g_age);
        };

        block();
    }
    return 0;
}
