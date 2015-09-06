//
//  AppDelegate.m
//  DongPracticeObjectiveC
//
//  Created by Dong Nguyen Duc on 9/6/15.
//  Copyright (c) 2015 Dong Nguyen Duc. All rights reserved.
//

#import "AppDelegate.h"
#import "BootLogic.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    //Cuong: Just include this line in AppDelegate
    [BootLogic boot:self.window];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
