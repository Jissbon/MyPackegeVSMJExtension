//
//  NewsNetManager.m
//  BaseProject(基础工程)
//
//  Created by apple on 16/3/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "NewsNetManager.h"
#import "NewsUrls.h"




@implementation NewsNetManager


+(id)getVieoWithStartIndex:(NSInteger)startIndex competionHandle:(void (^)(id model, NSError *error))competionHandle
{
    NSString *path = [NSString stringWithFormat:kNewURL,startIndex];
    return [self GET:path paremeters:nil competionHandle:^(id model, NSError *error) {
//        competionHandle([VieoModel par:model],error);我封装的解析方法
        
        /**MJExtension解析方法,数据和字典是不同的*/
//        if ([model isKindOfClass:[NSArray class]]) {
//            competionHandle([VieoModel mj_objectArrayWithKeyValuesArray:model],error);
//        }else{   
//            competionHandle([VieoModel mj_objectWithKeyValues:model],error);
//        }
        //封装后
        competionHandle([VieoModel parse:model],error);
    }];
        
}
@end
