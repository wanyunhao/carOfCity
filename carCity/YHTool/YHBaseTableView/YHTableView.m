//
//  YHTableView.m
//  allTest
//
//  Created by wyh on 2017/9/5.
//  Copyright © 2017年 wyh. All rights reserved.
//

#import "YHTableView.h"

@implementation YHTableView

//- (instancetype)initWithFrame:(CGRect)frame {
//    self = [super initWithFrame:frame];
//    self.delaysContentTouches = NO;
//    self.canCancelContentTouches = YES;
//    self.separatorStyle = UITableViewCellSeparatorStyleNone;
//    
//    // Remove touch delay (since iOS 8)
//    UIView *wrapView = self.subviews.firstObject;
//    // UITableViewWrapperView
//    if (wrapView && [NSStringFromClass(wrapView.class) hasSuffix:@"WrapperView"]) {
//        for (UIGestureRecognizer *gesture in wrapView.gestureRecognizers) {
//            // UIScrollViewDelayedTouchesBeganGestureRecognizer
//            if ([NSStringFromClass(gesture.class) containsString:@"DelayedTouchesBegan"] ) {
//                gesture.enabled = NO;
//                break;
//            }
//        }
//    }
//    
//    return self;
//}
//
//- (BOOL)touchesShouldCancelInContentView:(UIView *)view {
//    if ( [view isKindOfClass:[UIControl class]]) {
//        return YES;
//    }
//    return [super touchesShouldCancelInContentView:view];
//}
@end
