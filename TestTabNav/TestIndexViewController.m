//
//  TestIndexViewController.m
//  TestTabNav
//
//  Created by wyf on 12-6-14.
//  Copyright (c) 2012年 WYF. All rights reserved.
//

#import "TestIndexViewController.h"

@interface TestIndexViewController ()
@property (nonatomic, retain) NSMutableArray *sectionsArray;
@property (nonatomic, retain) UILocalizedIndexedCollation *collation;
@end

@implementation TestIndexViewController
@synthesize tableV,listContent,filteredListContent;
@synthesize sectionsArray, collation;


-(void) dealloc
{
    self.tableV.delegate = nil;
    self.tableV.dataSource = nil;
    self.tableV = nil;
    self.listContent = nil;
    self.filteredListContent = nil;
    self.sectionsArray = nil;
    self.collation = nil;
    [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) loadView
{
    UIView *view = [[[UIView alloc] init] autorelease];
    view.frame = CGRectMake(0, 0, 320, 416);
    self.view = view;
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 416) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    
    UISearchBar *searchBar = [[[UISearchBar alloc] init] autorelease];
    searchBar.frame = CGRectMake(0, 0, 320, 44);
    tableView.tableHeaderView = searchBar;
    
    [self.view addSubview:tableView];
    
//    UISearchBar
    
    [self setTableV:tableView];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	// The number of sections is the same as the number of titles in the collation.
    return self.sectionsArray.count;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
	// The number of time zones in the section is the count of the array associated with the section in the sections array.
//	NSArray *timeZonesInSection = [sectionsArray objectAtIndex:section];
//	
//    return [timeZonesInSection count];
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Get the time zone from the array associated with the section index in the sections array.
	NSArray *timeZonesInSection = [sectionsArray objectAtIndex:indexPath.section];
	
	// Configure the cell with the time zone's name.
//	TimeZoneWrapper *timeZone = [timeZonesInSection objectAtIndex:indexPath.row];
//    cell.textLabel.text = timeZone.localeName;
	
    return cell;
}

/*
 Section-related methods: Retrieve the section titles and section index titles from the collation.
 */

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [[collation sectionTitles] objectAtIndex:section];
}


- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return [collation sectionIndexTitles];
}


- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    return [collation sectionForSectionIndexTitleAtIndex:index];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSMutableDictionary *dictA = [[[NSMutableDictionary alloc] init] autorelease];
    [dictA setObject:@"aaa" forKey:@"Name"];
    
    NSMutableDictionary *dictB = [[[NSMutableDictionary alloc] init] autorelease];
    [dictB setObject:@"bbb" forKey:@"Name"];
    
    NSMutableDictionary *dictC = [[[NSMutableDictionary alloc] init] autorelease];
    [dictC setObject:@"ccc" forKey:@"Name"];
    
    NSMutableDictionary *dictD = [[[NSMutableDictionary alloc] init] autorelease];
    [dictD setObject:@"ddd" forKey:@"Name"];
    
    NSMutableDictionary *dictE = [[[NSMutableDictionary alloc] init] autorelease];
    [dictE setObject:@"eee" forKey:@"Name"];
    
    NSMutableArray *sectionArray = [[[NSMutableArray alloc] init] autorelease];
    [sectionArray addObject:dictA];
    [sectionArray addObject:dictB];
    [sectionArray addObject:dictC];
    [sectionArray addObject:dictD];
    [sectionArray addObject:dictE];
    
    self.sectionsArray = sectionArray;
    
    self.collation = [UILocalizedIndexedCollation currentCollation];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
