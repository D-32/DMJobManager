//
//  DMAppDelegate.m
//  DMJobManager
//
//  Created by CocoaPods on 11/03/2014.
//  Copyright (c) 2014 Dylan Marriott. All rights reserved.
//

#import "DMAppDelegate.h"
#import <DMJobManager/DMJobManager.h>

@implementation DMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [DMJobManager startManager];
    
    if ([DMJobManager pendingJobs] == 0) {
        DMDummyJob* job = [[DMDummyJob alloc] init];
        [DMJobManager postJob:job];
    }
    
    return YES;
}

@end
