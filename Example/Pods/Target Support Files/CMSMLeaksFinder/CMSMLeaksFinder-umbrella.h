#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "MLeakedObjectProxy.h"
#import "MLeaksFinder.h"
#import "MLeaksMessenger.h"
#import "NSObject+MemoryLeak.h"
#import "UIApplication+MemoryLeak.h"
#import "UINavigationController+MemoryLeak.h"
#import "UIPageViewController+MemoryLeak.h"
#import "UISplitViewController+MemoryLeak.h"
#import "UITabBarController+MemoryLeak.h"
#import "UITouch+MemoryLeak.h"
#import "UIView+MemoryLeak.h"
#import "UIViewController+MemoryLeak.h"

FOUNDATION_EXPORT double CMSMLeaksFinderVersionNumber;
FOUNDATION_EXPORT const unsigned char CMSMLeaksFinderVersionString[];

