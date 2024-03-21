随着`Swift`的不断普及，`OC`也渐渐成为弃子，`iOS`开发者不可避免的会遇到`Swift`与`OC`混编问题。写个小总结说明一下如何操作。

## Swift项目中使用OC

1、创建桥接文件（`Product Name-Bridging-Header.h`）

在创建另一个语言的文件时，Xcode会提示创建`Product Name-Bridging-Header.h`的桥接文件。比如我的项目名称为：`SwiftAppUsingOC`，那么桥接文件则为：`SwiftAppUsingOC-Bridging-Header.h`。

2、`Swift`调用`OC`

* 创建`OC`文件`OCTest.h`和`OCTest.m`。此时会提示创建桥接文件

``` ObjC
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
```
* 在桥接文件中导入要使用的`OC`头文件

    ```
    // Use this file to import your target's public headers that you would like to expose to Swift.
    
    #import "OCTest.h"
    
    ```
* `Swift`文件中使用`OC`

``` Swift
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let obj = OCTest();
        obj.test();
        
        OCTest.test();
        
        obj.ocCallSwift();
    }
}
```

3、`OC`中调用`Swift`

* 创建一个`Swift`文件`Person.swift`

``` Swift
import Foundation

// 必须继承 NSObject
class Person: NSObject {
    // 公开给OC的要使用 @objc 修饰
    @objc var name: String
    @objc var age : Int

    @objc init(name: String, age: Int) {
        self.name = name
        self.age = age
        print("Person init--name:\(name)；age=\(age)")
    }
    
    @objc func getInfo() {
        print("self.name：\(self.name),self.age = \(self.age)")
    }
    
    @objc class func classMethod() {
        print("Person classMethod")
    }
    
    @objc static func staticMethod() {
        print("Person staticMethod")
    }
}
```

* 在`OC`文件中导入`Swift Module`文件，格式为：`Product Module Name-Swift.h`，以上Demo中文件为`SwiftAppUsingOC-Swift.h`。比如此时我修改为：`HAHA`（默认跟`Product Name`一样），则文件名为：`HAHA-Swift.h`

![Product Module Name](assets/product_module_name.jpg)

* `OC`中使用`Swift`

``` Objc
- (void)ocCallSwift {
    NSLog(@"OC文件中使用Swift");
    
    Person *p = [[Person alloc] initWithName:@"哈哈" age:3];
    [p getInfo];
    [Person staticMethod];
    [Person classMethod];
}
```

## OC项目中使用Swift

在 `OC`项目中使用 `Swift` 跟 `Swift`项目中使用`OC`操作类似，也是分为几个步骤：

* 创建桥接文件（`Product Name-Bridging-Header.h`）
* 在桥接文件中导入`OC`头文件（`Swift`文件中使用`OC`）
``` Swift
import Foundation

// 必须继承 NSObject
class Person: NSObject {
    // 公开给OC的要使用 @objc 修饰
    @objc var name: String
    @objc var age : Int

    @objc init(name: String, age: Int) {
        self.name = name
        self.age = age
        print("Person init--name:\(name)；age=\(age)")
    }
    
    @objc func getInfo() {
        print("self.name：\(self.name),self.age = \(self.age)")
    }
    
    @objc class func classMethod() {
        print("Person classMethod")
    }
    
    @objc static func staticMethod() {
        print("Person staticMethod")
        
        //Swift中使用OC
        let obj = OCTest();
        obj.test();
        OCTest.test();
    }
}

```
* 在`OC`中导入`Swift Module`文件（`OC`文件中使用`Swift`）
``` ObjC
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
```

## 总结

`Swift`与`OC`混编，主要就是两个文件，一个是桥接文件，另一个是`Swift Module`文件。然后，最重要的一点是`Swift`类必须继承自`NSObject`，这点很好理解。当然，以上都是混编基础，很多细节需要在实践中不断探索总结。比如：`@objcMembers`修饰符、`Selector`、`Runtime`、`NSString`与`String`等，需要专门写个详细的总结文章。
