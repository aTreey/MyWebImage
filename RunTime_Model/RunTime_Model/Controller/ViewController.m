//
//  ViewController.m
//  runtime 字典转模型
//
//  Created by Apeng on 16/4/4.
//  Copyright © 2016年 Apeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *htmls;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", self.htmls);
}


//
- (NSMutableArray *)htmls
{
    if (_htmls == nil) {
        
        _htmls = [NSMutableArray array];
        
        NSString *filePath =  [[NSBundle mainBundle] pathForResource:@"help.json" ofType:nil];
        
        NSData *data = [NSData dataWithContentsOfFile:filePath];
        
        // 解析json
        NSArray *dictArr = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
        
        for (NSDictionary *dict in dictArr) {
            HPModel *item = [HPModel modelWithDict:dict];
            
            [_htmls addObject:item];
        }
        
    }
    
    return _htmls.copy;
}

@end
