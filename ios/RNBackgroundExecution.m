//
//  RNBackgroundExecution.m
//  RNBackgroundExecution
//
//  Created by Thanakrit Weekhamchai on 2020-04-14.
//  Copyright © 2020 Thanakrit Weekhamchai. All rights reserved.
//

#import "RNBackgroundExecution.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

static NSString *const RN_BACKGROUND_EXCUTION_TAG = @"RNBackgroundExecution";
static NSString *const EVENT_EXPIRE = @"expire";

@implementation RNBackgroundExecution {
  UIBackgroundTaskIdentifier backgroundTaskId;
}

RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

- (instancetype)init
{
  backgroundTaskId = UIBackgroundTaskInvalid;
  return self;
}

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

- (NSArray<NSString *> *)supportedEvents {
    return @[EVENT_EXPIRE];
}

- (NSString*)eventName:(NSString*)name
{
  return [NSString stringWithFormat:@"%@:%@", RN_BACKGROUND_EXCUTION_TAG, name];
}

RCT_EXPORT_METHOD(beginBackgroundTaskWithExpirationHandler:(RCTResponseSenderBlock)expirationHandler)
{
  backgroundTaskId = [UIApplication.sharedApplication beginBackgroundTaskWithName:@"RNBackgroundExecution task" expirationHandler:^{
    [UIApplication.sharedApplication endBackgroundTask:backgroundTaskId];
    backgroundTaskID = UIBackgroundTaskInvalid;
    
    expirationHandler(@[@[YES]]);
  }];
}

RCT_EXPORT_METHOD(endBackgroundTask)
{
  if (backgroundTaskId !== UIBackgroundTaskInvalid) {
    [UIApplication.sharedApplication endBackgroundTask:backgroundTaskId];
    backgroundTaskID = UIBackgroundTaskInvalid;
  }
}

@end

