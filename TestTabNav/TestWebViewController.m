//
//  TestWebViewController.m
//  TestTabNav
//
//  Created by wyf on 12-7-23.
//  Copyright (c) 2012年 WYF. All rights reserved.
//

#import "TestWebViewController.h"

@interface TestWebViewController ()

@end

@implementation TestWebViewController

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
    view.frame = CGRectMake(0, 0, 320, 460);
    self.view = view;
    
    UIWebView *webView = [[[UIWebView alloc] init] autorelease];
    webView.frame = CGRectMake(0, 0, 320, 460);
//    webView.backgroundColor  = [UIColor colorWithPatternImage:[[FloggerUIFactory uiFactory] createImage:SNS_BACKGROUND_TEXTURE]];
    
//    NSString *url = [self.webInfoDic objectForKey:kWebURLPath];
    NSString *url = @"http://www.baidu.com";
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    
    [self.view addSubview:webView];
    
//    UIToolbar
    UIToolbar *toolBar = [[[UIToolbar alloc] init] autorelease];
    toolBar.frame = CGRectMake(0, 0, 320, 44);
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
