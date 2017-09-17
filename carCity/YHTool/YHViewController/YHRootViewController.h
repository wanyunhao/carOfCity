//
//  YHRootViewController.h
//  allTest
//
//  Created by wyh on 2017/9/5.
//  Copyright © 2017年 wyh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YHRootViewController : UIViewController

@property (nonatomic,strong) NSMutableArray *dataArray;

-(void)addNav:(NSString *)title;
//带返回箭头的
-(void)addNavigationWithTitle:(NSString *)title;

- (void)pop;

- (void)popToRootVc;

- (void)popToVc:(UIViewController *)vc;

- (void)dismiss;

- (void)dismissWithCompletion:(void(^)())completion;

- (void)presentVc:(UIViewController *)vc;

- (void)presentVc:(UIViewController *)vc completion:(void (^)(void))completion;

- (void)pushVc:(UIViewController *)vc;

-(void)backEvent;
@end
