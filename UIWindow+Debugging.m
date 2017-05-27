//
//  UIWindow+Debugging.m
//  UIDebuggingInformationOverlayDemo
//
//  Created by zyliu on 2017/5/27.
//  Copyright © 2017年 zyliu. All rights reserved.
//

#import "UIWindow+Debugging.h"

static const NSTimeInterval kEnableDelaySec = 1;

@implementation UIWindow (Debugging)

#if DEBUG

+ (void)load
{
    [self performSelector:@selector(enableDebuggingInformationOverlay) withObject:nil afterDelay:kEnableDelaySec];
}

+ (void)enableDebuggingInformationOverlay
{
    Class overlayClass = NSClassFromString(@"UIDebuggingInformationOverlay");
    SEL selector = NSSelectorFromString(@"prepareDebuggingOverlay");
    if ([overlayClass respondsToSelector:selector])
    {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [overlayClass performSelector:selector];
#pragma clang diagnostic pop
    }
}

#endif

@end
