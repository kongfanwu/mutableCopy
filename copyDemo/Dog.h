//
//  Dog.h
//  copyDemo
//
//  Created by KFW on 2019/4/19.
//  Copyright © 2019 KFW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+FWCopying.h"

NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject 
/** <##> */
@property (nonatomic, copy) NSString *name;
/** <##> */
@property (nonatomic) NSInteger age;
@end

NS_ASSUME_NONNULL_END
