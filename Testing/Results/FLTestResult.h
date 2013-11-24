//
//  FLTestResult.h
//  FishLamp
//
//  Created by Mike Fullerton on 10/18/12.
//  Copyright (c) 2013 GreenTongue Software LLC, Mike Fullerton. 
//  The FishLamp Framework is released under the MIT License: http://fishlamp.com/license 
//

#import "FLCoreRequired.h"

@class FLStackTrace;
@protocol FLStringFormatting;

@protocol FLStringFormatter;

@protocol FLTestResult <NSObject>

@property (readonly, assign) BOOL started;
@property (readonly, assign) BOOL finished;
@property (readonly, assign) BOOL passed;
@property (readonly, strong) NSString* testName;

// error data
@property (readonly, copy) NSException* exception;
@property (readonly, copy) NSError* error;

- (void) setStarted;
- (void) setFinished;
- (void) setPassed; // only passes if error is nil
- (void) setFailedWithError:(NSError*) error;
- (void) setFailedWithException:(NSException*) ex;

- (void) appendLogEntry:(id<FLStringFormatting>) logEntry;

@property (readonly, strong, nonatomic) NSArray* logEntries;

@end

@protocol FLCountedTestResult <FLTestResult>

@property (readonly, assign) NSUInteger expectedCount;
@property (readonly, assign) NSUInteger count;

- (void) increment;

@end

