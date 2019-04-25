//
//  NSObject+FWCopying.m
//  Aladdin
//
//  Created by 孔凡伍 on 15/9/25.
//  Copyright © 2015年 kongfanwu. All rights reserved.
//

#import "NSObject+FWCopying.h"
#import <objc/runtime.h>

@implementation NSObject (FWCopying)

- (id)copyWithZone:(nullable NSZone *)zone
{
    return [self yy_modelCopy];
}

- (id)mutableCopyWithZone:(nullable NSZone *)zone
{
    return [self yy_modelMutableCopy];
}
@end
