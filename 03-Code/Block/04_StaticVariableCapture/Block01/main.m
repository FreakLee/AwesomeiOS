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
        static NSInteger s_age = 5;
        static int s_data = 42;
        static int *s_Ptr = &s_data;
        
        void (^block) (void) = ^(){
            NSLog(@"%zd-%d",s_age,*s_Ptr);
        };

        block();
    }
    return 0;
}
