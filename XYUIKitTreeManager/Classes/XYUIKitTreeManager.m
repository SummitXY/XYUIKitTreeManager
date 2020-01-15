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

+ (CGSize)windowSize {

    UIWindow *window = [self mainWindow];
    CGSize windowSize = window.bounds.size;
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0f && UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)) {
        return CGSizeMake(windowSize.height, windowSize.width);
    }
    return windowSize;
}

@end
