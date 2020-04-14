//
//  RNBackgroundExecution.h
//  RNBackgroundExecution
//
//  Created by Thanakrit Weekhamchai on 2020-04-14.
//  Copyright © 2020 Thanakrit Weekhamchai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import <React/RCTBridgeModule.h>

#if __has_include("RCTEventEmitter.h")
#import "RCTEventEmitter.h"
#else
#import <React/RCTEventEmitter.h>
#endif

@interface RNBackgroundExecution : RCTEventEmitter <RCTBridgeModule>

@end
  
