//
//  YHBaseCell.m
//  allTest
//
//  Created by wyh on 2017/9/5.
//  Copyright © 2017年 wyh. All rights reserved.
//

#import "YHBaseCell.h"

@implementation YHBaseCell

+ (instancetype)cellWithTBView:(UITableView *)tableView withIndex:(NSIndexPath *)indexPath
{
    NSString *ID1 = NSStringFromClass(self.class);
    Class class = [self class];
    id cell = [tableView cellForRowAtIndexPath:indexPath];
    if (!cell) {
        // cell的复用ID需要在xib的属性栏中设置
        cell = [[class alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID1];
        [cell addGrayLine];
        [cell addSubviews];
    }
    return cell;
}

- (void)addGrayLine {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
//    _line = [[UIView alloc]initWithFrame:CGRectMake(15, 0, SCREEN_WIDTH-30, 0.5)];
//    _line.backgroundColor = UIColorFromRGB(0xeeeeee);
//    [self.contentView addSubview:_line];
//    
//    _next = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-8-15, (self.bounds.size.height-14)/2., 8, 14)];
//    _next.image = [UIImage imageNamed:@"open1"];
//    _next.hidden = YES;
//    [self.contentView addSubview:_next];
}

- (void)addSubviews {
    
}

@end
