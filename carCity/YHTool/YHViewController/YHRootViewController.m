//
//  YHRootViewController.m
//  allTest
//
//  Created by wyh on 2017/9/5.
//  Copyright © 2017年 wyh. All rights reserved.
//

#import "YHRootViewController.h"

@interface YHRootViewController ()

@end

@implementation YHRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.navigationController.navigationBar.hidden = YES;
    [self.navigationController.navigationBar setTranslucent:YES];
    self.view.backgroundColor = UIColorHex(f6f6f6);
}
-(void)addNav:(NSString *)title{
    UIView *backgroundView = [YHTool getUIViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 64) withBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:backgroundView];
    
    UILabel *titleLabel = [YHTool getUILabelWithFrame:CGRectMake(100, 22, SCREEN_WIDTH-200, 44) withTitle:title withFont:17 withTextColor:UIColorHex(111111)];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [backgroundView addSubview:titleLabel];
    
}
-(void)addNavigationWithTitle:(NSString *)title{
    UIView *backgroundView = [YHTool getUIViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 64) withBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:backgroundView];
    
    UILabel *titleLabel = [YHTool getUILabelWithFrame:CGRectMake(100, 22, SCREEN_WIDTH-200, 44) withTitle:title withFont:17 withTextColor:UIColorHex(111111)];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [backgroundView addSubview:titleLabel];
    
    YHResetFrameButton *btn = [YHTool getResetButtonWithFrame:CGRectMake(0, 0, 64, 64) withTitle:@"" withTextFrame:CGRectZero withImage:@"back" withImageFrame:CGRectMake(15, 35, 9, 17) withTarge:self withSel:@selector(backEvent)];
    [backgroundView addSubview:btn];
    
}
-(void)backEvent{
    [self pop];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pop {
    if (self.navigationController == nil) return ;
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)popToRootVc {
    if (self.navigationController == nil) return ;
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)popToVc:(UIViewController *)vc {
    if ([vc isKindOfClass:[UIViewController class]] == NO) return ;
    if (self.navigationController == nil) return ;
    [self.navigationController popToViewController:vc animated:YES];
}
- (void)dismiss {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)dismissWithCompletion:(void(^)())completion {
    [self dismissViewControllerAnimated:YES completion:completion];
}

- (void)presentVc:(UIViewController *)vc {
    if ([vc isKindOfClass:[UIViewController class]] == NO) return ;
    [self presentVc:vc completion:nil];
}

- (void)presentVc:(UIViewController *)vc completion:(void (^)(void))completion {
    if ([vc isKindOfClass:[UIViewController class]] == NO) return ;
    [self presentViewController:vc animated:YES completion:completion];
}

- (void)pushVc:(UIViewController *)vc {
    if ([vc isKindOfClass:[UIViewController class]] == NO) return ;
    if (self.navigationController == nil) return ;
    if (vc.hidesBottomBarWhenPushed == NO) {
        vc.hidesBottomBarWhenPushed = YES;
    }
    [self.navigationController pushViewController:vc animated:YES];
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
    }
    return _dataArray;
}

@end
