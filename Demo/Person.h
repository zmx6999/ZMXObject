//
//  Person.h
//  ZMXObject
//
//  Created by zmx on 16/1/24.
//  Copyright © 2016年 zmx. All rights reserved.
//

#import "ZMXObject.h"

@interface Person : ZMXObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, strong) NSNumber *age;

@property (nonatomic, copy) NSString *sex;

@end
