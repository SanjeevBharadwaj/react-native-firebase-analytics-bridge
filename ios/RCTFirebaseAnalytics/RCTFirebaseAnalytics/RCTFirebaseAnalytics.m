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
        //TODO: Setup basics
    }
    return self;
}

//---------------- FIRAnalytics Methods ------------
//// [START custom_event_objc]
//RCT_EXPORT_METHOD(logEventWithName:(nonnull NSString *)name parameters:(nullable NSDictionary< NSString *, NSObject * > *) parameters) {
//    
//    [FIRAnalytics logEventWithName:name
//                        parameters:parameters];
//}



@end
