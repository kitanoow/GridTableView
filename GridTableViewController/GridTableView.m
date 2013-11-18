//
//  GridTableView.m
//  GridTableViewController
//
//  Created by kitano on 2013/11/18.
//  Copyright (c) 2013年 kitano. All rights reserved.
//

#import "GridTableView.h"

@implementation GridTableView
{
    int _num;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.dataSource = self;
        self.delegate = self;
        
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    _num = [_grid_datasource numberInView];
    return [self getNumberRow:_num];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    int row = [indexPath row];
    // create content view array
    NSMutableArray *contentViews = [[NSMutableArray alloc] init];
    int start = row * 3;
    for(int i = start;i< start+3;i++) {
        if(i == _num) break ;
        [contentViews addObject:[_grid_datasource imageAtIndex:i]];
    }
    
    NSString *cellIdentifier = @"GridCell";
    GridCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[GridCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        [cell setContentViews:contentViews];
    } else {
        [cell reloadContentViews:contentViews];
    }
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return GRIDVIEW_HEIGHT + GRIDVIEW_PADDING * 2;
}

-(int)getNumberRow:(int)num{
    if(num == 0) return 0;
    int ret = ((num - 1) / 3 ) + 1;
    return ret;
    
}



@end
