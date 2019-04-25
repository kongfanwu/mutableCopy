//
//  Person.h
//  copyDemo
//
//  Created by KFW on 2019/4/19.
//  Copyright © 2019 KFW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShenPerson.h"
#import "Dog.h"
#import "NSObject+FWCopying.h"

typedef NS_ENUM(NSInteger, PersonType) {
    PersonType1 = 100,
    PersonType2 = 101,
};

NS_ASSUME_NONNULL_BEGIN

@interface Person : ShenPerson
/** <##> */
@property (nonatomic, copy) NSString *name;
/** <##> */
@property (nonatomic) NSInteger age;
/** <##> */
@property (nonatomic, strong) Dog *dog;

/** <#type#> */
@property (nonatomic, copy) void (^blockName)(NSString *name);

/** <##> */
@property (nonatomic, strong) NSMutableArray <Dog *> *array;
/** <##> */
@property (nonatomic) PersonType type;
@end

NS_ASSUME_NONNULL_END
