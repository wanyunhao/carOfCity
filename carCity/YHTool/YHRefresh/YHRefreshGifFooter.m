//
//  YHRefreshGifFooter.m
//  allTest
//
//  Created by wyh on 2017/9/5.
//  Copyright © 2017年 wyh. All rights reserved.
//

#import "YHRefreshGifFooter.h"

@implementation YHRefreshGifFooter

-(instancetype)init{
    if (self = [super init]) {
        self.refreshingTitleHidden = YES;
        self.stateLabel.hidden = YES;
        [self setImages:@[[UIImage imageNamed:@"reflesh1_60x55"], [UIImage imageNamed:@"reflesh2_60x55"], [UIImage imageNamed:@"reflesh3_60x55"]]  forState:MJRefreshStateRefreshing];
        [self setImages:@[[UIImage imageNamed:@"reflesh1_60x55"], [UIImage imageNamed:@"reflesh2_60x55"], [UIImage imageNamed:@"reflesh3_60x55"]]  forState:MJRefreshStatePulling];
        [self setImages:@[[UIImage imageNamed:@"reflesh1_60x55"], [UIImage imageNamed:@"reflesh2_60x55"], [UIImage imageNamed:@"reflesh3_60x55"]]  forState:MJRefreshStateIdle];
    }
    return self;
}

@end
