//
//  Person.h
//  Block01
//
//  Created by min Lee on 2018/6/15.
//  Copyright © 2018年 min Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^MyBlock)(void);

@interface Person : NSObject

@property (nonatomic, copy) MyBlock block;

- (void)test;

@end

