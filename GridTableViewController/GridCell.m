//
//  GridCell.m
//  GridTableViewController
//
//  Created by kitano on 2013/11/18.
//  Copyright (c) 2013年 kitano. All rights reserved.
//

#import "GridCell.h"

@implementation GridCell
{
    NSMutableArray *imageViewList;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        imageViewList = [[NSMutableArray alloc] init];
        // Initialization code
        for(int i=0;i<GRID_COUNT;i++) {
            UIImageView  *contentView = [[UIImageView alloc] init];
            contentView.frame = CGRectMake(GRIDVIEW_PADDING + ( GRIDVIEW_WIDTH + GRIDVIEW_PADDING )*i,
                                           GRIDVIEW_PADDING,
                                           GRIDVIEW_WIDTH,
                                           GRIDVIEW_HEIGHT);
            contentView.contentMode = UIViewContentModeScaleAspectFit;
            [self addSubview:contentView];
            [imageViewList addObject:contentView];
        }
        
    }
    return self;
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) setContentViews:(NSArray*)contentViews
{
    for(int i=0;i<[imageViewList count];i++) {
        UIImageView *subView =  (UIImageView*)imageViewList[i];
        if([contentViews count] <= i) continue;
        subView.image = contentViews[i];
    }
    
}

-(void) reloadContentViews:(NSArray*)contentViews
{
    for(int i=0;i<[imageViewList count];i++) {
        UIImageView *subView =  (UIImageView*)imageViewList[i];
        subView.image = nil;
        if([contentViews count] <= i) continue;
        subView.image = contentViews[i];
    }
    
}


@end
