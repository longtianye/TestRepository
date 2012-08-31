//
//  FourthViewController.m
//  TestTabNav
//
//  Created by wyf on 12-4-25.
//  Copyright (c) 2012年 WYF. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


-(void) loadView
{
    UIView *view = [[[UIView alloc] init] autorelease];
    view.backgroundColor = [UIColor cyanColor];
    view.frame = CGRectMake(0, 0, 320, 480);
    self.view =  view;
    
    UIView *titleV = [[[UIView alloc] init] autorelease];
    titleV.frame = CGRectMake(0, 0, 320, 44);
    titleV.backgroundColor = [UIColor redColor];
    self.navigationItem.titleView = titleV;
    
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
