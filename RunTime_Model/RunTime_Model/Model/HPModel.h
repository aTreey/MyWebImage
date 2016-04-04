//
//  HPModel.h
//  runtime 字典转模型
//
//  Created by Apeng on 16/4/4.
//  Copyright © 2016年 Apeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HPModel : NSObject
@property (nonatomic, strong) NSString *title;

@property (nonatomic, strong) NSString *html;

@property (nonatomic, strong) NSString *ID;

+ (instancetype)modelWithDict:(NSDictionary *)dict;

@end
