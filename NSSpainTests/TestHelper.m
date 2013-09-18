//
//  TestHelper.m
//  NSSpain
//
//  Created by Marin Usalj on 9/18/13.
//
//

#import "TestHelper.h"

@implementation TestHelper

NSDate *atTime(NSString *humanTime) {
    NSDateFormatter *formatta = [NSDateFormatter new];
    [formatta setDateFormat:@"h:mm a"];

    NSLog(@"CURRENT TIME: %@", [formatta stringFromDate:[NSDate date]]);

    return [formatta dateFromString:humanTime];
}

@end
