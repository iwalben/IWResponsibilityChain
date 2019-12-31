//
//  IWResponsibilityManager.h
//  IWResponsibilityChain
//
//  Created by walben on 2019/12/31.
//  Copyright © 2019 iwalben. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+IWResponsibilityChain.h"

NS_ASSUME_NONNULL_BEGIN

@interface IWResponsibilityManager : NSObject
@property (nonatomic, strong, readonly) NSArray *chains;
- (void)addChain:(NSObject *)object;
- (void)removeChain:(NSObject *)object;
- (IWResponsibilityMessage *)checkResponsibilityChain;
@end

NS_ASSUME_NONNULL_END
