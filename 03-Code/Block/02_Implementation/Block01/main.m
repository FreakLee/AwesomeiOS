//
//  main.m
//  Block01
//
//  Created by min Lee on 2018/6/13.
//  Copyright © 2018年 min Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

struct __main_block_desc_0 {
  size_t reserved;
  size_t Block_size;
};

struct __block_impl {
  void *isa;
  int Flags;
  int Reserved;
  void *FuncPtr;
};

struct __main_block_impl_0 {
  struct __block_impl impl;
  struct __main_block_desc_0* Desc;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void (^block)(void) = ^{
            NSLog(@"Hello, World!");
        };
        
        struct __main_block_impl_0 *blk_struct = (__bridge struct __main_block_impl_0 *)block;
        
        block();
    }
    return 0;
}
