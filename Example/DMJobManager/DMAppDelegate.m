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
        
        DMHTTPRequestJob* job2 = [[DMHTTPRequestJob alloc] initWithUrl:@"http://d-32.com"];
        [DMJobManager postJob:job2];
    }
    
    return YES;
}

@end
