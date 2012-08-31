//
//  AppDelegate.m
//  TestTabNav
//
//  Created by wyf on 12-4-24.
//  Copyright (c) 2012年 WYF. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self setupNavAndTab];
    [self.window makeKeyAndVisible];
    return YES;
}

-(void) setupNavAndTab
{
    FirstViewController *firstControl = [[[FirstViewController alloc] init] autorelease];
    SecondViewController *secondControl = [[[SecondViewController alloc] init] autorelease];
    UINavigationController *firstNav = [[UINavigationController alloc] initWithRootViewController:firstControl];
    firstNav.view.backgroundColor = [UIColor brownColor];
    firstNav.title = @"First Nav";
    firstNav.delegate = self;
    UINavigationController *secondNav = [[UINavigationController alloc] initWithRootViewController:secondControl];
    secondNav.title = @"Second Nav";
    
    UITabBarController *tabControl = [[[UITabBarController alloc] init] autorelease];
    tabControl.viewControllers = [[[NSArray alloc] initWithObjects:firstNav,secondNav, nil] autorelease];
    tabControl.delegate = self;
    tabControl.view.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = tabControl;
    
}
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    NSLog(@"begin tab");
    NSLog(@"viewcontro class name is %@",[viewController class]);
    NSLog(@"tab control frame is %@",[NSValue valueWithCGRect:tabBarController.view.frame]);
    NSLog(@"viewcontrol control frame is %@",[NSValue valueWithCGRect:viewController.view.frame]);
        NSLog(@"viewcontrol control  navigationBar frame is %@",[NSValue valueWithCGRect:viewController.navigationController.navigationBar.frame]);
//    viewController.navigationBar.backgroundColor = [UIColor redColor];
//    viewController.n
    NSLog(@"========");
//    [viewController.view setNeedsLayout];
//    viewController.
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"navigationController willShowViewController");
    NSLog(@"viewcontrol name is %@",[viewController class]);
//    NSLog(@"viewcontrol superclass is %@",[viewController.s class]);
    
    for (UIView *view in navigationController.viewControllers) {
        NSLog(@"======================");
        NSLog(@"nav views is %@",view);
    }
    
    
    if ([viewController isKindOfClass:[ThirdViewController class]]) {
//        self.window.rootViewController.view.frame = CGRectMake(0, 20, 320, 460 + 49);
        viewController.hidesBottomBarWhenPushed = YES;
    }else {
//        self.window.rootViewController.view.frame = CGRectMake(0, 20, 320, 460);
        viewController.hidesBottomBarWhenPushed = NO;
//        navigationController.
    }
    
}
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"navigationController didShowViewController");
    
//    NSLog(@" viewcontrol frame is %@", [NSValue valueWithCGRect:viewController.view.frame]);
//    NSLog(@" navcontrol frame is %@", [NSValue valueWithCGRect:navigationController.view.frame]);
//    NSLog(@" tabcontrol frame is %@", [NSValue valueWithCGRect:self.window.rootViewController.view.frame]);
//    NSLog(@" tabcontrol navigationBar frame is %@", [NSValue valueWithCGRect:self.window.rootViewController.navigationController.navigationBar.frame]);
    
    if ([viewController isKindOfClass:[ThirdViewController class]]) {
//        self.window.rootViewController.view.frame = CGRectMake(0, 20, 320, 460 + 49);
//        [self.window.rootViewController.tabBarController.tabBar setHidden:YES];
//        navigationController.
//        [self.window.rootViewController.tabBar setHidden:YES]
//        viewController.hidesBottomBarWhenPushed = YES;
    }else {
//        [self.window.rootViewController.tabBarController.tabBar setHidden:NO];
//        self.window.rootViewController.view.frame = CGRectMake(0, 20, 320, 460);        
//        navigationController.navigationBar.frame = CGRectMake(0, 0, 320, 44);
    }
//    self.window.rootViewController.hidesBottomBarWhenPushed
//    UIAppearance
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
