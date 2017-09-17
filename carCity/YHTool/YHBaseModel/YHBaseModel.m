//
//  YHBaseModel.m
//  allTest
//
//  Created by wyh on 2017/9/5.
//  Copyright © 2017年 wyh. All rights reserved.
//

#import "YHBaseModel.h"

@implementation YHBaseModel

-(instancetype)initWithDictionary:(NSDictionary*)dict{
    return (self = [[super init] initWithDictionary:dict error:nil]);
}
+(BOOL)propertyIsOptional:(NSString*)propertyName{
    return YES;
}

@end
