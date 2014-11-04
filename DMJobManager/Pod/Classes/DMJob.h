//
//  DMJob.h
//  Pods
//
//  Created by Dylan Marriott on 03/11/14.
//
//

typedef void (^CompletionBlock)(BOOL);

@protocol DMJob <NSObject, NSCoding>

- (void)executeWithCompletion:(CompletionBlock)completion;

@optional
- (NSTimeInterval)retryDelay;
- (void)willRetry;

@end
