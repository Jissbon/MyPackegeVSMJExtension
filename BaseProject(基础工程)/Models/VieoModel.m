//
//  VieoModel.m
//  BaseProject(基础工程)
//
//  Created by apple on 16/3/17.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "VieoModel.h"

@implementation VieoModel

//MJExtension封装的解析方法
+ (NSDictionary *)objectClassInArray{
    return @{@"videoSidList" : [Videosidlist class], @"videoList" : [Videolist class]};
}

//自己封装的解析方法
+(NSDictionary *)keyvalueisClassAsArray
{
  return @{@"videoSidList" : [Videosidlist class], 
           @"videoList" : [Videolist class]}; 
}
@end


@implementation Videosidlist



@end


@implementation Videolist
/**通过下面方法更好某些属性对应的key*/
//propertyNmae :属性名
//返回 属性名 所对应的key
+(NSString *)replaceKeyFromPropertyName121:(NSString *)propertyName{
    if ([propertyName isEqualToString:@"desc"]) {
        propertyName = @"description";
    }
    return propertyName;
}

//我封装的方法里面已经自动实现这一段.所以不用在这里写,
@end





