//
//  YHTool.h
//  allTest
//
//  Created by wyh on 2017/9/5.
//  Copyright © 2017年 wyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YHResetFrameButton.h"

@interface YHTool : NSObject

/**
 获取背景的UIView

 @param frame 范围
 @param backgroundColor 背景色
 @return view
 */
+(UIView *)getUIViewWithFrame:(CGRect)frame withBackgroundColor:(UIColor *)backgroundColor;

/**
 获取简单点label

 @param frame 范围
 @param title 文字
 @param fontSize 文字大小
 @param textColor 文字颜色
 @return label
 */
+(UILabel *)getUILabelWithFrame:(CGRect)frame withTitle:(NSString *)title withFont:(CGFloat)fontSize withTextColor:(UIColor *)textColor;

/**
 重置button文字图片的范围

 @param rect btn范围
 @param text 文字
 @param textFrame 文字范围
 @param imageName 图片名称
 @param imageFrame 图片范围
 @return btn
 */
+(YHResetFrameButton *)getResetButtonWithFrame:(CGRect)rect withTitle:(NSString *)text withTextFrame:(CGRect)textFrame withImage:(NSString *)imageName withImageFrame:(CGRect)imageFrame withTarge:(id)target withSel:(SEL)sel;

@end
