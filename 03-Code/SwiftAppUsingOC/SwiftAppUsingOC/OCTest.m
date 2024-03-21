//
//  OCTest.m
//  SwiftAppUsingOC
//
//  Created by min Lee  on 2024/3/20.
//  Copyright © 2024 min Lee. All rights reserved.
//

#import "OCTest.h"
#import "HAHA-Swift.h"

@implementation OCTest

- (void)test {
    NSLog(@"OCTest--实例方法");
}

+ (void)test {
    NSLog(@"OCTest--类方法");
}

- (void)ocCallSwift {
    NSLog(@"OC文件中使用Swift");
    
    Person *p = [[Person alloc] initWithName:@"哈哈" age:3];
    [p getInfo];
    [Person staticMethod];
    [Person classMethod];
}

@end
