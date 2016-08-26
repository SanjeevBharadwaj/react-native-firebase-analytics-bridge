//
//  RCTFirebaseAnalytics.m
//  RCTFirebaseAnalytics
//
//  Created by Sanjeev Bharadwaj Venu Gopala on 25/08/16.
//  Copyright © 2016 QueVisions. All rights reserved.
//

#import "RCTFirebaseAnalytics.h"
#import "Firebase.h"

@implementation RCTFirebaseAnalytics

RCT_EXPORT_MODULE();

- (instancetype)init
{
    if ((self = [super init])) {
    }
    return self;
}

// ---------------- FIRAnalytics Methods ------------

RCT_EXPORT_METHOD(configure) {
    [FIRApp configure];
}

RCT_EXPORT_METHOD(logEventWithName:(nonnull NSString *)name parameters:(nullable NSDictionary< NSString *, NSObject*> *) parameters) {
   
   [FIRAnalytics logEventWithName:name parameters:parameters];
}

RCT_EXPORT_METHOD(setUserPropertyString:(nullable NSString *) value forName:(nonnull NSString *) name) {
   [FIRAnalytics setUserPropertyString:value forName:name];
}

RCT_EXPORT_METHOD (setUserID:(nullable NSString *) userID) {
	[FIRAnalytics setUserID:(userID)];	
}

// ---------------- FIRAnalytics (AppDelegate) Methods ------------
//+ (void) handleEventsForBackgroundURLSession:(NSString *) identifier completionHandler:(void(^)(void)) completionHandler {}

RCT_EXPORT_METHOD (handleOpenURL:(NSURL *) url) {
    [FIRAnalytics handleOpenURL: url];
}

RCT_EXPORT_METHOD (handleUserActivity: (id) userActivity) {
    [FIRAnalytics handleUserActivity:userActivity];
}

RCT_REMAP_METHOD (sharedInstance, resolver:(RCTPromiseResolveBlock) resolve) {
    resolve([FIRAnalyticsConfiguration sharedInstance]);
}

RCT_EXPORT_METHOD (setMinimumSessionInterval:(NSTimeInterval) minimumSessionInterval) {
    [[FIRAnalyticsConfiguration sharedInstance] setMinimumSessionInterval:minimumSessionInterval];
}

RCT_EXPORT_METHOD (setSessionTimeoutInterval:(NSTimeInterval) sessionTimeoutInterval) {
    [[FIRAnalyticsConfiguration sharedInstance] setSessionTimeoutInterval:sessionTimeoutInterval];
}

RCT_EXPORT_METHOD (setAnalyticsCollectionEnabled:(NSTimeInterval) analyticsCollectionEnabled) {
    [[FIRAnalyticsConfiguration sharedInstance] setAnalyticsCollectionEnabled:analyticsCollectionEnabled];
}

@end
