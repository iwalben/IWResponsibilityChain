//
//  IWResponsibilityManager.m
//  IWResponsibilityChain
//
//  Created by walben on 2019/12/31.
//  Copyright © 2019 iwalben. All rights reserved.
//

#import "IWResponsibilityManager.h"

@interface IWResponsibilityManager()
@property (nonatomic, strong) NSMutableArray *storeChains;
@property (strong, nonatomic) dispatch_semaphore_t semaphore;
@end


@implementation IWResponsibilityManager
- (instancetype)init {
    if (self = [super init]) {
        self.storeChains = [NSMutableArray array];
        self.semaphore = dispatch_semaphore_create(1);
    }
    return self;
}

- (NSArray *)chains {
    return self.storeChains.copy;
}

- (void)addChain:(NSObject *)object {
    NSParameterAssert(object.responsibilityChain);
    dispatch_semaphore_wait(self.semaphore, DISPATCH_TIME_FOREVER);
    [self.storeChains addObject:object];
    dispatch_semaphore_signal(self.semaphore);
}

- (void)removeChain:(NSObject *)object {
    NSParameterAssert(object.responsibilityChain);
    dispatch_semaphore_wait(self.semaphore, DISPATCH_TIME_FOREVER);
    [self.storeChains removeObject:object];
    dispatch_semaphore_signal(self.semaphore);
}

- (IWResponsibilityMessage *)checkResponsibilityChain {
    IWResponsibilityMessage *message = nil;
    dispatch_semaphore_wait(self.semaphore, DISPATCH_TIME_FOREVER);
    for (NSObject *chain in self.storeChains) {
        message = [chain.responsibilityChain canPassThrough];
        if (message.checkSuccess == NO) {
            break;
        }
    }
    dispatch_semaphore_signal(self.semaphore);
    return message;
}
@end
