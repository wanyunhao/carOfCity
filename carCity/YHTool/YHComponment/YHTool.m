//
//  YHTool.m
//  allTest
//
//  Created by wyh on 2017/9/5.
//  Copyright © 2017年 wyh. All rights reserved.
//

#import "YHTool.h"

@implementation YHTool
+(UIView *)getUIViewWithFrame:(CGRect)frame withBackgroundColor:(UIColor *)backgroundColor{
    UIView *view = [[UIView alloc]initWithFrame:frame];
    view.backgroundColor = backgroundColor;
    return view;
}
+(UILabel *)getUILabelWithFrame:(CGRect)frame withTitle:(NSString *)title withFont:(CGFloat)fontSize withTextColor:(UIColor *)textColor{
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    label.numberOfLines = 0;
    label.text = title;
    label.font = KFontSize(fontSize);
    label.textColor = textColor;
    return label;
}
+(YHResetFrameButton *)getResetButtonWithFrame:(CGRect)rect withTitle:(NSString *)text withTextFrame:(CGRect)textFrame withImage:(NSString *)imageName withImageFrame:(CGRect)imageFrame withTarge:(id)target withSel:(SEL)sel{
    YHResetFrameButton *btn = [YHResetFrameButton buttonWithType:UIButtonTypeCustom];
    btn.frame = rect;
    [btn setTitle:text forState:UIControlStateNormal];
    btn.titleRect = textFrame;
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    btn.imageRect = imageFrame;
    [btn addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    return btn;
}
@end
