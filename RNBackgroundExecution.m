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

@interface RNBackgroundExecution()

@property (nonatomic, assign) UIBackgroundTaskIdentifier backgroundTaskId;

@end

@implementation RNBackgroundExecution

RCT_EXPORT_MODULE()

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

- (instancetype)init
{
  self.backgroundTaskId = UIBackgroundTaskInvalid;
  return self;
}

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

RCT_EXPORT_METHOD(beginBackgroundTaskWithExpirationHandler:(RCTResponseSenderBlock)callback)
{
  self.backgroundTaskId = [UIApplication.sharedApplication beginBackgroundTaskWithName:@"RNBackgroundExecution task" expirationHandler:^{
    [UIApplication.sharedApplication endBackgroundTask:self.backgroundTaskId];
    self.backgroundTaskID = UIBackgroundTaskInvalid;
    
    callback(@[[NSNull null], [NSNull null]]);
  }];
}

RCT_EXPORT_METHOD(endBackgroundTask)
{
  if (self.backgroundTaskId !== UIBackgroundTaskInvalid) {
    [UIApplication.sharedApplication endBackgroundTask:self.backgroundTaskId];
    self.backgroundTaskID = UIBackgroundTaskInvalid;
  }
}

@end
