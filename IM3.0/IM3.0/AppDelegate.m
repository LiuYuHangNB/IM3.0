//
//  AppDelegate.m
//  IM3.0
//
//  Created by 刘宇航 on 16/6/21.
//  Copyright © 2016年 刘宇航. All rights reserved.
//

#import "AppDelegate.h"

#import "EMSDK.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    EMOptions *options = [EMOptions optionsWithAppkey:@"l44572265#mingdeparents"];
    options.apnsCertName = @"develop";
    [[EMClient sharedClient] initializeSDKWithOptions:options];
    
    EMError *error = [[EMClient sharedClient] registerWithUsername:@"lyh1234" password:@"111111"];
    if (error==nil) {
        NSLog(@"注册成功");
    }
    
    EMError *errorlog = [[EMClient sharedClient] loginWithUsername:@"lyh1234" password:@"111111"];
    
    if (!errorlog) {
        NSLog(@"登录成功");
    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[EMClient sharedClient] applicationDidEnterBackground:application];

}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    [[EMClient sharedClient] applicationWillEnterForeground:application];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
