//
//  Person.m
//  copyDemo
//
//  Created by KFW on 2019/4/19.
//  Copyright © 2019 KFW. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setBlockName:^(NSString * _Nonnull name) {
            NSLog(@"Person1 %@", name);
        }];
    }
    return self;
}


@end
