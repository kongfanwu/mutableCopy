//
//  NSObject+FWCopying.h
//  Aladdin
//
//  Created by 孔凡伍 on 15/9/25.
//  Copyright © 2015年 kongfanwu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYModel.h"

/**
 *  copy 指针拷贝
 *  mutableCopy 深度拷贝 1) 元素对象深度拷贝 2) 集合类型，本身深度拷贝，集合里元素指针拷贝
 */
@interface NSObject (FWCopying) <NSCopying, NSMutableCopying>

@end
