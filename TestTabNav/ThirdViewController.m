//
//  ThirdViewController.m
//  TestTabNav
//
//  Created by wyf on 12-4-24.
//  Copyright (c) 2012年 WYF. All rights reserved.
//

#import "ThirdViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import "FourthViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

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
    view.backgroundColor = [UIColor grayColor];
    view.frame = CGRectMake(0, 0, 320, 480);
    self.view =  view;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 50, 30);
    [btn setTitle:@"Play" forState:UIControlEventTouchUpInside];
    [btn addTarget:self action:@selector(go2PlayVideo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
//    self.hidesBottomBarWhenPushed = YES;
    
    
    UIButton *navBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    navBtn.frame = CGRectMake(200, 100, 50, 30);
    [navBtn setTitle:@"Nav" forState:UIControlEventTouchUpInside];
    [navBtn addTarget:self action:@selector(go2View) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:navBtn];
    
    UIView *titleV = [[[UIView alloc] init] autorelease];
    titleV.frame = CGRectMake(0, 0, 320, 44);
    titleV.backgroundColor = [UIColor redColor];
    self.navigationItem.titleView = titleV;
    
}

-(void) go2View
{
    FourthViewController *fourthViewControl = [[[FourthViewController alloc] init] autorelease];
//    fourthViewControl.hidesBottomBarWhenPushed = NO;
//    self.hidesBottomBarWhenPushed = NO;
    [self.navigationController pushViewController:fourthViewControl animated:YES];
    
}

-(void) viewWillAppear:(BOOL)animated
{
    NSLog(@"viewControl viewWillAppear");
    [super viewWillAppear:YES];
//    self.hidesBottomBarWhenPushed = YES;
}

-(void) go2PlayVideo
{
    //to do play video    
    NSURL *videoUrl = [NSURL URLWithString:@"http://www.iflogger.com:8080/Flogger/image?id=2012030000000055&type=1&suffix=.mov"];
    MPMovieSourceType movieSourceType = MPMovieSourceTypeUnknown;
    movieSourceType = MPMovieSourceTypeStreaming;
    
    MPMoviePlayerViewController *moviePlayer = [[[MPMoviePlayerViewController alloc] initWithContentURL:videoUrl] autorelease];
    moviePlayer.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
    moviePlayer.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [moviePlayer.moviePlayer prepareToPlay];
    [moviePlayer.moviePlayer play];
    //    [self.feedTableDelegate.navigationController presentModalViewController:moviePlayer animated:YES]; 
//    NSLog(@"tabContorl size is %@",[NSValue valueWithCGRect:self.tabBarController.view.frame]);
//    NSLog(@"navContorl size is %@",[NSValue valueWithCGRect:self.navigationController.view.frame]); 
//            NSLog(@"tabcontrol tabBar size is %@",[NSValue valueWithCGRect:self.tabBarController.tabBar.frame]);
    
//    [self.navigationController presentModalViewController:moviePlayer animated:YES];
    [self.navigationController presentViewController:moviePlayer animated:YES completion:^{
//        NSLog(@"======tabContorl size is %@",[NSValue valueWithCGRect:self.tabBarController.view.frame]);
//        NSLog(@"======navContorl size is %@",[NSValue valueWithCGRect:self.navigationController.view.frame]); 
//        NSLog(@"======tabcontrol tabBar size is %@",[NSValue valueWithCGRect:self.tabBarController.tabBar.frame]);
    }];
    
//    NSLog(@"===tabContorl size is %@",self.tabBarController.view.frame);
//    NSLog(@"===navContorl size is %@",self.navigationController.view.frame); 
//    [self presentModalViewController:moviePlayer animated:YES];
//    nsl
//    self.tabBarController.view.frame
    
//    [self.tabBarController presentModalViewController:moviePlayer animated:YES];
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
