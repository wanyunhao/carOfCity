//
//  YHBaseCell.h
//  allTest
//
//  Created by wyh on 2017/9/5.
//  Copyright © 2017年 wyh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YHBaseCell : UITableViewCell
+ (instancetype)cellWithTBView:(UITableView *)tableView withIndex:(NSIndexPath *)indexPath;
@property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIImageView *next;
- (void)addSubviews;
@end
