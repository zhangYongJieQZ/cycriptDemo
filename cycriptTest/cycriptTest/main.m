//
//  main.m
//  cycriptTest
//
//  Created by 张永杰 on 16/6/2.
//  Copyright © 2016年 张永杰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <Cycript/Cycript.h>
int main(int argc, char * argv[]) {
    @autoreleasepool {
#ifdef CYCRIPT_ENABLE
        CYListenServer(8000);
#endif
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
