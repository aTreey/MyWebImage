//
//  NSObject+Model.m
//  runtime 字典转模型
//
//  Created by Apeng on 16/4/4.
//  Copyright © 2016年 Apeng. All rights reserved.
//

#import "NSObject+Model.h"
#import <objc/runtime.h>

@implementation NSObject (Model)
+ (instancetype)objectWithDict:(NSDictionary *)dict mapDict:(NSDictionary *)mapDict{
    
    id obj = [[self alloc] init];
    
    // 使用RunTime遍历模型中的字典
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList(self, &count);
    
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivars[i];
        
        // 属性名称
        NSString *ivarName = @(ivar_getName(ivar));
        // 获取的是带下划线的成员变量, 去掉下划线
        ivarName = [ivarName substringFromIndex:1];
        
        // 根据key取value
       id value = dict[ivarName];
        
        // 判断外界是否做了key 值得替换
        if (value == nil) {
            if (mapDict) {
                NSString *keyName = mapDict[ivarName];
                value = dict[keyName];
            }
        }
        // 使用kvc给对象赋值
        [obj setValue:value forKeyPath:ivarName];
    }
    
    return obj;
}
@end
