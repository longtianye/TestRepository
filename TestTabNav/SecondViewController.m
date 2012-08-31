//
//  SecondViewController.m
//  TestTabNav
//
//  Created by wyf on 12-4-24.
//  Copyright (c) 2012年 WYF. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    view.backgroundColor = [UIColor yellowColor];
    view.frame = CGRectMake(0, 0, 320, 460);
    self.view =  view;
    
    UIView *titleV = [[[UIView alloc] init] autorelease];
    titleV.frame = CGRectMake(0, 0, 320, 44);
    titleV.backgroundColor = [UIColor redColor];
    self.navigationItem.titleView = titleV;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
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
