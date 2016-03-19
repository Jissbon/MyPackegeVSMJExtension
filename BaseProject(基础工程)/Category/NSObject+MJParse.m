
//
//  NSObject+MJParse.m
//  BaseProject(基础工程)
//
//  Created by apple on 16/3/19.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "NSObject+MJParse.h"

@implementation NSObject (MJParse)
+(id)parse:(id)responseObj
{
    if ([responseObj isKindOfClass:[NSArray class]]) {
        return [self mj_objectArrayWithKeyValuesArray:responseObj];
    }else{
        return [self mj_objectWithKeyValues:responseObj];
    }
}

@end
