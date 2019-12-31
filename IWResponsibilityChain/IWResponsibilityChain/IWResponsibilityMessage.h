//
//  IWResponsibilityMessage.h
//  IWResponsibilityChain
//
//  Created by walben on 2019/12/31.
//  Copyright © 2019 iwalben. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IWResponsibilityMessage : NSObject
@property (nonatomic, weak) id object;
@property (nonatomic) BOOL checkSuccess;
@property (nonatomic, strong) id errorMessage;
@end

NS_ASSUME_NONNULL_END
