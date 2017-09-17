//
//  YHBaseViewController.h
//  allTest
//
//  Created by wyh on 2017/9/5.
//  Copyright © 2017年 wyh. All rights reserved.
//

#import "YHRootViewController.h"

@interface YHBaseViewController : YHRootViewController<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@end
