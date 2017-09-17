//
//  YHHttpTool.h
//  allTest
//
//  Created by wyh on 2017/9/5.
//  Copyright © 2017年 wyh. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>
#import <MBProgressHUD/MBProgressHUD.h>
typedef void (^YHHttpFinishBlock) (id result,NSError *error);
typedef NS_ENUM(NSUInteger, YHNetworkStates) {
    NetworkStatesNone, // 没有网络
    NetworkStates2G, // 2G
    NetworkStates3G, // 3G
    NetworkStates4G, // 4G
    NetworkStatesWIFI // WIFI
};

@interface YHHttpTool : AFHTTPSessionManager
+ (instancetype)shareTool;

/**
 Get没有菊花

 @param url 网址
 @param dic 参数
 @param block 回调
 */
-(void)getWithUrl:(NSString *)url withDic:(id)dic withBlock:(YHHttpFinishBlock)block;
@end
