//
//  IWResponsibilityChain.h
//  IWResponsibilityChain
//
//  Created by walben on 2019/12/31.
//  Copyright © 2019 iwalben. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IWResponsibilityMessage.h"

NS_ASSUME_NONNULL_BEGIN
/**
 子类来继承的类
 */
@interface IWResponsibilityChain : NSObject
@property (nonatomic, weak) id object;
- (IWResponsibilityMessage *)canPassThrough;
@end

NS_ASSUME_NONNULL_END
