//
//  ViewController.m
//  GridTableViewController
//
//  Created by kitano on 2013/11/18.
//  Copyright (c) 2013年 kitano. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *imageFiles;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    imageFiles = [NSArray arrayWithObjects:
                  [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"2" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"3" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"2" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"3" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"2" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"3" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"2" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"3" ofType:@"jpg"],
                  [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"],
                  nil];
    
    
    
    GridTableView *gridview = [[GridTableView alloc] initWithFrame:self.view.bounds];
    gridview.grid_datasource = self;
    [self.view addSubview:gridview];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)numberInView
{
    return [imageFiles count];
}
-(UIImage*)imageAtIndex:(int)index
{
    return [UIImage imageWithContentsOfFile:[imageFiles objectAtIndex:index]];
}


@end
