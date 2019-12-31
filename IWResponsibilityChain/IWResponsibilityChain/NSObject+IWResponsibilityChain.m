//
//  NSObject+IWResponsibilityChain.m
//  IWResponsibilityChain
//
//  Created by walben on 2019/12/31.
//  Copyright © 2019 iwalben. All rights reserved.
//

#import "NSObject+IWResponsibilityChain.h"
#import <objc/runtime.h>

@implementation NSObject (IWResponsibilityChain)
- (void)setResponsibilityChain:(IWResponsibilityChain *)responsibilityChain {
    responsibilityChain.object = self;
    objc_setAssociatedObject(self, @selector(responsibilityChain), responsibilityChain, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (IWResponsibilityChain *)responsibilityChain {
    return objc_getAssociatedObject(self, _cmd);
}
@end
