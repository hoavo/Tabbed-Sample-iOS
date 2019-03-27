//
//  AppDelegate.m
//  ProperWhiskey
//
//  Created by Popdeem on 15/10/2018.
//  Copyright © 2018 Niall Quinn. All rights reserved.
//
#import "AppDelegate.h"
#import "PopdeemSDK.h"
#import "PopdeemSDK.h"
#import <Fabric/Fabric.h>
#import <Crashlytics/Crashlytics.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>

#import "PDSocialAPIService.h"

@interface AppDelegate ()

@end

NSString *facebookUserID = @"105795063903763";
NSString *facebookAccessToken = @"EAAYP4vypxZC4BAE09QxhZBLs8VBvBmaNAsWGyHvKUVa9yUWz5Uq6uCdUvo1k6ViTeYbPo6yTtd6UAGNCMuxHHZCupf1P2X7nOZAgvdztIpJUOBdXyMCUVrPxBsU7AeAfijNlGRf9ZBqwtf5m95WRS8JZCBeceRmQ2XusO1KZB5iAQrvmHuli1NZBMdfgEIBAk5ar2pl0brcBfeO2ZAR0JNUaSXvAB76ZCTaueFS9tN9aG5MonBh5RMsvIf";

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [PopdeemSDK withAPIKey:@"e934194f-cf4d-4b79-8526-9ccbbc06d0c9" env:PDEnvProduction];
    
    // e934194f-cf4d-4b79-8526-9ccbbc06d0c9
    
    [PopdeemSDK setUpThemeFile:@"theme"];
    [PopdeemSDK setDebug:YES];
    
    
    [PopdeemSDK enableSocialLoginWithNumberOfPrompts:300];
    
    
    //[PopdeemSDK setFacebookCredentials:facebookAccessToken facebookId:facebookUserID];
    
    
   
    [PopdeemSDK registerForPushNotificationsApplication:application];
    [[FBSDKApplicationDelegate sharedInstance] application:application
                             didFinishLaunchingWithOptions:launchOptions];
    [Fabric with:@[[Crashlytics class]]];
    
    return YES;
}


- (void) application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    [PopdeemSDK application:application didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
}

- (void) application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
    [PopdeemSDK application:application didFailToRegisterForRemoteNotificationsWithError:error];
}

- (void) application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    if ([[userInfo objectForKey:@"sender"] isEqualToString:@"popdeem"]) {
        [PopdeemSDK handleRemoteNotification:userInfo];
        return;
    }
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (BOOL) application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *, id> *)options
{
    
    BOOL handled = [[FBSDKApplicationDelegate sharedInstance] application:app openURL:url options:options
                    ];
    // Add any custom logic here.
    if (handled) return handled;
    
    if ([PopdeemSDK application:app canOpenUrl:url options:options]) {
        return [PopdeemSDK application:app openURL:url options:options];
    }
    return NO;
}


@end
