//
//  DMJobManager.h
//  Pods
//
//  Created by Dylan Marriott on 03/11/14.
//
//

#import <Foundation/Foundation.h>
#import "DMJob.h"
#import "DMDummyJob.h"
#import "DMHTTPRequestJob.h"

@interface DMJobManager : NSObject

+ (void)startManager;
+ (void)postJob:(id<DMJob>)job;
+ (NSUInteger)pendingJobs;

@end
