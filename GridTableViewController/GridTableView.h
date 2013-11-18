//
//  GridTableView.h
//  GridTableViewController
//
//  Created by kitano on 2013/11/18.
//  Copyright (c) 2013年 kitano. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GridCell.h"
@protocol GridTableViewDataSourse;

@interface GridTableView : UITableView
<UITableViewDataSource,UITableViewDelegate>
@property (retain,nonatomic) id<GridTableViewDataSourse> grid_datasource;
@end

@protocol GridTableViewDataSourse
-(int)numberInView;
-(UIImage*)imageAtIndex:(int)index;
@end