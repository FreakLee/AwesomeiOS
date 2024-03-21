//
//  ViewController.m
//  OCAppUsingSwift
//
//  Created by min Lee  on 2024/3/20.
//  Copyright © 2024 min Lee. All rights reserved.
//

#import "ViewController.h"
#import "OCAppUsingSwift-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //OC中使用Swift
    Person *p = [[Person alloc] initWithName:@"哈哈" age:3];
    [p getInfo];
    [Person staticMethod];
    [Person classMethod];
}

@end
