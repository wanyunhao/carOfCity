//
//  YHHttpTool.m
//  allTest
//
//  Created by wyh on 2017/9/5.
//  Copyright © 2017年 wyh. All rights reserved.
//

#import "YHHttpTool.h"

@implementation YHHttpTool
static YHHttpTool *_manager;
+ (instancetype)shareTool
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [YHHttpTool manager];
        // 设置超时时间
        _manager.requestSerializer.timeoutInterval = 30.f;
        _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", @"text/xml", @"text/plain", nil];
    });
    return _manager;
}
-(id)copyWithZone:(NSZone *)zone
{
    return _manager;
}
-(id)mutableCopyWithZone:(NSZone *)zone
{
    return _manager;
}

-(void)getWithUrl:(NSString *)url withDic:(id)dic withBlock:(YHHttpFinishBlock)block{
    UIWindow *window = [UIApplication sharedApplication].delegate.window;
    [_manager GET:url parameters:dic progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"结果:\n%@",responseObject);
        block(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:window animated:YES];
        hud.mode = MBProgressHUDModeText;
        hud.label.text = @"请检查网络";
        hud.offset = CGPointMake(0.f, MBProgressMaxOffset);
        [hud hideAnimated:YES afterDelay:2.f];
        block(nil,error);
    }];
}
@end
