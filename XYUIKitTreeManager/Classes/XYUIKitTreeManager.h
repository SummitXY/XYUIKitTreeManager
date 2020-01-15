//
//  XYUIKitTreeManager.h
//  Pods-XYUIKitTreeManager_Example
//
//  Created by quxiangyu on 2019/12/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYUIKitTreeManager : NSObject

+ (BOOL)_isPadDevice;

+ (nullable UIWindow *)mainWindow;

+ (nullable UIViewController*)mainWindowRootViewController;

+ (CGSize)windowSize;

@end

NS_ASSUME_NONNULL_END
