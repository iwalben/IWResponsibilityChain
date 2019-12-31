//
//  IWResponsibilityChain.m
//  IWResponsibilityChain
//
//  Created by walben on 2019/12/31.
//  Copyright © 2019 iwalben. All rights reserved.
//

#import "IWResponsibilityChain.h"

@implementation IWResponsibilityChain

/**
交给子类根据具体的业务去实现
*/
- (IWResponsibilityMessage *)canPassThrough {
    IWResponsibilityMessage *message = [IWResponsibilityMessage new];
    message.checkSuccess = YES;
    message.object = self.object;
    return message;
}
@end
