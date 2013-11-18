//
//  GridCell.h
//  GridTableViewController
//
//  Created by kitano on 2013/11/18.
//  Copyright (c) 2013年 kitano. All rights reserved.
//

#import <UIKit/UIKit.h>
#define GRIDVIEW_WIDTH   100
#define GRIDVIEW_HEIGHT  100
#define GRIDVIEW_PADDING 5
#define GRID_COUNT 3

@interface GridCell : UITableViewCell
-(void) setContentViews:(NSArray*)contentViews;
-(void) reloadContentViews:(NSArray*)contentViews;
@end
