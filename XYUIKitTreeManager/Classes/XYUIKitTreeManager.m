//
//  XYUIKitTreeManager.m
//  Pods-XYUIKitTreeManager_Example
//
//  Created by quxiangyu on 2019/12/27.
//

#import "XYUIKitTreeManager.h"

@implementation XYUIKitTreeManager

+ (BOOL)_isPadDevice {

    return [[UIDevice currentDevice].model isEqualToString: @"iPad"];
}

+ (UIWindow *)mainWindow {

    UIWindow * window = nil;
    if ([[UIApplication sharedApplication].delegate respondsToSelector:@selector(window)]) {
        window = [[UIApplication sharedApplication].delegate window];
    }
    if (![window isKindOfClass:[UIView class]]) {
        window = [UIApplication sharedApplication].keyWindow;
    }
    if (!window) {
        window = [[UIApplication sharedApplication].windows objectAtIndex:0];
    }
    return window;
}

+ (UIViewController *)mainWindowRootViewController {

    return [[self mainWindow] rootViewController];
}

@end
