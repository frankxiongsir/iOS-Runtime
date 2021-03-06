//
//  main.m
//  OC-Load&Initialize
//
//  Created by admin on 16/3/12.
//  Copyright © 2016年 ShengQiangLiu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyInitializeTest.h"
#import "MySubInitializeTest.h"

#import "MyInitializeTest+Category.h"
#import "MySubInitializeTest+Category.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        
        /*
         
         2016-03-03 21:55:21.776 OC +load vs +initialize[2065:76308] MyLoadTest
         2016-03-03 21:55:21.779 OC +load vs +initialize[2065:76308] MySubLoadTest
         2016-03-03 21:55:21.779 OC +load vs +initialize[2065:76308] Category -> MySubLoadTest
         2016-03-03 21:55:21.779 OC +load vs +initialize[2065:76308] Category -> MyLoadTest
         
         */
        
        /*
         +load 方法是当类或分类被添加到 Objective-C runtime 时被调用的，实现这个方法可以让我们在类加载的时候执行一些类相关的行为。子类的 +load 方法会在它的所有父类的 +load 方法之后执行，而分类的 +load 方法会在它的主类的 +load 方法之后执行。但是不同的类之间的 +load 方法的调用顺序是不确定的。
         子类 +load 方法等父类先执行完 +load 方法才执行。
         分类 +load 方法会在它的主类 +load 方法之后执行
         */
        
        
        /*+initialize方法会在该类或者子类收到第一条消息的时候调用*/
        //    MySubInitializeTest *test = [[MySubInitializeTest alloc] init];
            MyInitializeTest *test = [[MyInitializeTest alloc] init];
        
//        MySubInitializeTest *test = [[MySubInitializeTest alloc] init];
        
    }
    return 0;
}
