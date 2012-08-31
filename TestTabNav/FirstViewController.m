//
//  FirstViewController.m
//  TestTabNav
//
//  Created by wyf on 12-4-24.
//  Copyright (c) 2012年 WYF. All rights reserved.
//

#import "FirstViewController.h"
#import "ThirdViewController.h"
#import "TestWebViewController.h"
#import "TestIndexViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize testImageV;

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
    view.backgroundColor = [UIColor whiteColor];
    view.frame = CGRectMake(0, 0, 320, 460);
    self.view =  view;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(0, 0, 50, 50);
    [btn addTarget:self action:@selector(btnTap:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn];
//    [self.navigationController.navigationBar setHidden:YES];
//    self.navigationController.navigationBar.frame = CGRectMake(0, 0, 320, 44);
    
    UIView *titleV = [[[UIView alloc] init] autorelease];
    titleV.frame = CGRectMake(0, 0, 320, 44);
//    titleV.backgroundColor = [UIColor redColor];
    self.navigationItem.titleView = titleV;
    
    
    UIImage *image = [UIImage imageNamed:@"MessageEntryInputField.png"];
    image = [image stretchableImageWithLeftCapWidth:13 topCapHeight:22];
    UIImageView *imageV = [[UIImageView alloc] initWithImage:image];

    
//    UIImage *entryBackground = [rawEntryBackground stretchableImageWithLeftCapWidth:13 topCapHeight:22];//[rawEntryBackground stretchableImageWithLeftCapWidth:13 topCapHeight:22];
//    UIImageView *entryImageView = [[[UIImageView alloc] initWithImage:entryBackground] autorelease];
//    entryImageView.frame = CGRectMake(5, 0, 248, 40);
//    entryImageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;

    
    imageV.frame = CGRectMake(50, 50, 100, 30);
    imageV.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [testBtn addTarget:self action:@selector(testAction:) forControlEvents:UIControlEventTouchUpInside];
    testBtn.frame = CGRectMake(0, 50, 45, 30);
    [testBtn setTitle:@"Plus" forState:UIControlStateNormal];
    
    UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [cancelBtn addTarget:self action:@selector(cancelAction:) forControlEvents:UIControlEventTouchUpInside];
    cancelBtn.frame = CGRectMake(0, 100, 45, 30);
    [cancelBtn setTitle:@"Subtract" forState:UIControlStateNormal];
    
    [self.view addSubview:imageV];
    [self.view addSubview:testBtn];
    [self.view addSubview:cancelBtn];
    
    
    self.testImageV = imageV;
    
    
    UIImage *image1 = [UIImage imageNamed:@"sns_Navigation_Feed.png"];
    UIImage *image2 = [UIImage imageNamed:@"sns_Navigation_Popular.png"];
    UIImage *image3 = [UIImage imageNamed:@"sns_Navigation_iFlogger.png"];
    UIImage *image4 = [UIImage imageNamed:@"sns_Navigation_News.png"];
    UIImage *image5 = [UIImage imageNamed:@"sns_Navigation_Profile.png"];
    
    UIImageView *imageV1 = [[UIImageView alloc] initWithImage:image1];
    imageV1.frame = CGRectMake(0, 200, image1.size.width, image1.size.height);
    UIImageView *imageV2 = [[UIImageView alloc] initWithImage:image2];
    imageV1.frame = CGRectMake(0 + image1.size.width, 200, image2.size.width, image2.size.height);
    UIImageView *imageV3 = [[UIImageView alloc] initWithImage:image3];
    imageV1.frame = CGRectMake(image1.size.width + image2.size.width, 200, image3.size.width, image3.size.height);
    UIImageView *imageV4 = [[UIImageView alloc] initWithImage:image4];
    imageV1.frame = CGRectMake(0, 200, image1.size.width, image1.size.height);
    UIImageView *imageV5 = [[UIImageView alloc] initWithImage:image1];
    imageV1.frame = CGRectMake(0, 200, image1.size.width, image1.size.height);
    
    
}

-(void) cancelAction : (id) sender
{
    CGRect frame = self.testImageV.frame;
    frame.size.width = frame.size.width - 10;
    frame.size.height  = frame.size.height - 5;
    
    self.testImageV.frame = frame;
}

-(void)testAction : (id) sender
{   
//    self.testImageV.frame.size.width = self.testImageV.frame.size.width + 10;
    CGRect frame = self.testImageV.frame;
    frame.size.width = frame.size.width + 10;
    frame.size.height  = frame.size.height + 5;
    
    self.testImageV.frame = frame;

}

-(void) btnTap : (id) sender
{
//    ThirdViewController *thirdControl = [[[ThirdViewController alloc] init] autorelease];
//    thirdControl.hidesBottomBarWhenPushed = YES;
//    [self.navigationController pushViewController:thirdControl animated:YES];
//    NSURL
    
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"com.iflogger.iflogger"]];
        
//    TestIndexViewController *testIndexViewControl = [[TestIndexViewController alloc] init];
//    [self.navigationController pushViewController:testIndexViewControl animated:YES];
    
    TestWebViewController *webView = [[[TestWebViewController alloc] init] autorelease];
//    [self.navigationController pushViewController:webView animated:YES];
    [self presentModalViewController:webView animated:YES];
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
