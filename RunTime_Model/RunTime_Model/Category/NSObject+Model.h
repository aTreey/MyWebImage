//
//  NSObject+Model.h
//  runtime 字典转模型
//
//  Created by Apeng on 16/4/4.
//  Copyright © 2016年 Apeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Model)
//mapDict : 用于对字典中的key值得替换
+ (instancetype)objectWithDict:(NSDictionary *)dict mapDict:(NSDictionary *)mapDict;
@end
