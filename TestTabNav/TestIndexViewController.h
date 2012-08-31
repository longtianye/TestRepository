//
//  TestIndexViewController.h
//  TestTabNav
//
//  Created by wyf on 12-6-14.
//  Copyright (c) 2012年 WYF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestIndexViewController : UIViewController <UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate>

@property (nonatomic, retain) UITableView *tableV;
@property (nonatomic, retain) NSArray *listContent;
@property (nonatomic, retain) NSMutableArray *filteredListContent;

@end
