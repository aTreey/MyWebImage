//
//  HPModel.m
//  runtime 字典转模型
//
//  Created by Apeng on 16/4/4.
//  Copyright © 2016年 Apeng. All rights reserved.
//

#import "HPModel.h"
#import "NSObject+Model.h"

@implementation HPModel

+ (instancetype)modelWithDict:(NSDictionary *)dict{
    
    HPModel *model = [self objectWithDict:dict mapDict:@{@"ID":@"id"}];
    return model;
}

@end
