//
//  AppDelegate.m
//  Pinky
//
//  Created by Rudrarajsinh Chavda on 08/08/15.
//  Copyright (c) 2015 Rudrarajsinh Chavda. All rights reserved.
//

#import "AppDelegate.h"
#import "AFNetworking.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self loadJson];
    return YES;
}


-(void)loadJson
{
    {
        NSMutableDictionary *dict =[[NSMutableDictionary alloc]init];
        
        [dict setValue:@"555" forKey:@"plate_name"];
        [dict setValue:@"parkmeter" forKey:@"option"];
        [dict setValue:@"6e203720924a0a59806356bc0e3a46406d3ca09ec202185d9c4f288a72e01de1" forKey:@"device_id"];
        [dict setValue:@"9999999999" forKey:@"phone_no"];
        [dict setValue:@"G" forKey:@"symbol"];
        
        NSString *base_url =[NSString stringWithFormat:@"http://ilebanon.me/searchapp/updated_code-1.3/parkEn.php?"];
        AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
        //  NSDictionary *parameters = @{@"foo": @"bar"};
        [manager POST:base_url parameters:dict success:^(AFHTTPRequestOperation *operation, id responseObject)
         {
             NSLog(@"responseObject in view did load==%@",responseObject);
             NSDictionary *dictResponse = responseObject;

         }
              failure:^(AFHTTPRequestOperation *operation, NSError *error)
         {
             NSLog(@"Error: %@", error);
         }];
    }
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
