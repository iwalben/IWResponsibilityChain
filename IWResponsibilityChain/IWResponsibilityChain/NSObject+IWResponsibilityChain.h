//
//  NSObject+IWResponsibilityChain.h
//  IWResponsibilityChain
//
//  Created by walben on 2019/12/31.
//  Copyright © 2019 iwalben. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "IWResponsibilityChain.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (IWResponsibilityChain)
@property (nonatomic, strong) IWResponsibilityChain *responsibilityChain;
@end

NS_ASSUME_NONNULL_END
