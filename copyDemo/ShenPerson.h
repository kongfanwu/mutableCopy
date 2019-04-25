//
//  ShenPerson.h
//  copyDemo
//
//  Created by KFW on 2019/4/22.
//  Copyright © 2019 KFW. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ShenPersonType) {
    ShenPersonType1 = 200,
    ShenPersonType2 = 201,
};

NS_ASSUME_NONNULL_BEGIN

@interface ShenPerson : NSObject

/** <##> */
@property (nonatomic, copy) NSString *shen_name;
/** <##> */
@property (nonatomic) NSInteger shen_age;
/** <##> */
@property (nonatomic) ShenPersonType shen_type;

@end

NS_ASSUME_NONNULL_END
