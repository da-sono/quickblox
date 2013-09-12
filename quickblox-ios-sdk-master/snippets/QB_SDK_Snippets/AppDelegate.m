//
//  AppDelegate.m
//  QB_SDK_Samples
//
//  Created by Igor Khomenko on 6/5/12.
//  Copyright (c) 2012 Injoit. All rights reserved.
//

#import "AppDelegate.h"

#import "AuthModuleViewController.h"
#import "UsersModuleViewController.h"
#import "RatingsModuleViewController.h"
#import "LocationModuleViewController.h"
#import "MessagesModuleViewController.h"
#import "ContentModuleViewController.h"
#import "ChatModuleViewController.h"
#import "CustomObjectsModuleViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize tabBarController = _tabBarController;

- (void)dealloc
{
    [_window release];
    [_tabBarController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    UIViewController *viewController1 = [[[AuthModuleViewController alloc] initWithNibName:@"AuthModuleViewController" bundle:nil] autorelease];
    UIViewController *viewController2 = [[[UsersModuleViewController alloc] initWithNibName:@"UsersModuleViewController" bundle:nil] autorelease];
    UIViewController *viewController3 = [[[LocationModuleViewController alloc] initWithNibName:@"LocationModuleViewController" bundle:nil] autorelease];
    UIViewController *viewController4 = [[[MessagesModuleViewController alloc] initWithNibName:@"MessagesModuleViewController" bundle:nil] autorelease];
    UIViewController *viewController5 = [[[RatingsModuleViewController alloc] initWithNibName:@"RatingsModuleViewController" bundle:nil] autorelease];
    UIViewController *viewController6 = [[[ContentModuleViewController alloc] initWithNibName:@"ContentModuleViewController" bundle:nil] autorelease];
    UIViewController *viewController7 = [[[ChatModuleViewController alloc] initWithNibName:@"ChatModuleViewController" bundle:nil] autorelease];
    UIViewController *viewController8 = [[[CustomObjectsModuleViewController alloc] initWithNibName:@"CustomObjectsModuleViewController" bundle:nil] autorelease];
    
    self.tabBarController = [[[UITabBarController alloc] init] autorelease];
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:viewController1, viewController2, viewController8, viewController7, viewController4, viewController6,
                                             viewController5, viewController3, nil];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    
    // show Chat
    self.tabBarController.selectedIndex = 3;
    
//    // Set QuickBlox credentials
    [QBSettings setApplicationID:92];
    [QBSettings setAuthorizationKey:@"wJHdOcQSxXQGWx5"];
    [QBSettings setAuthorizationSecret:@"BTFsj7Rtt27DAmT"];
    
//    // QBB XMPP Chat web
//    [QBSettings setApplicationID:3212];
//    [QBSettings setAuthorizationKey:@"qRHLA4tTtUdZWvn"];
//    [QBSettings setAuthorizationSecret:@"XfazkswyMEHk2Xx"];
    
//    // One partner
//    [QBSettings setApplicationID:2117];
//    [QBSettings setAuthorizationKey:@"GWBn9h6Jp5y3wA6"];
//    [QBSettings setAuthorizationSecret:@"QhY65shs5WeBRL2"];
    
//    // test server
//    // Set QuickBlox credentials
//    [QBSettings setServerZone:QBServerZoneStage];
//    [QBSettings setApplicationID:22];
//    [QBSettings setAuthorizationKey:@"xGRzM9GDkuC5RB2"];
//    [QBSettings setAuthorizationSecret:@"bM3WqUc5Kyu3mWE"];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
    // Получили пуш!
    // userInfo
    NSLog(@"push %@", userInfo);
}


@end
