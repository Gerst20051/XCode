//
//  AppDelegate.m
//  AlphaTouch
//
//  Created by gerst on 8/2/13.
//  Copyright (c) 2013 gerst. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Called when the application is launched.
    // (BOOL)                                 application:(UIApplication *)application
    //                      didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
    // Description:                            MethodName:(ParameterTypes *)ParameterNames
    
    // self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    // self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    // self.window.rootViewController = self.viewController;
    // [self.window makeKeyAndVisible];
    
    // UIScreen *screen = [UIScreen mainScreen]; // Get the main screen
    // CGRect viewRect = [screen bounds]; // Get the bounds of screen
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    // UIWindow *window = [[UIWindow alloc] initWithFrame:viewRect]; // Allocate memory for a UI Window and initialize object with frame size to the boundo of the main screen.
    self.window = [[UIWindow alloc] initWithFrame:viewRect];
    UIViewController *colorTouchVC = [[UIViewController alloc] init];
    UIView *colorView = [[UIView alloc] initWithFrame:viewRect]; // Create a view the size of the whole screen.
    colorView.backgroundColor = [UIColor yellowColor]; // Look up the UIColor class to change color.
    colorTouchVC.view = colorView;
    self.window.rootViewController = colorTouchVC; // This ViewController gets control of the window.
    [self.window makeKeyAndVisible]; // Means it should receive all keyboard & non-touch events.
    NSLog(@"Screen is %f tall and %f wide", viewRect.size.height, viewRect.size.width);
    
    return YES;
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
