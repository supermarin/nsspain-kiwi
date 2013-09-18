//
//  TestHelper.m
//  NSSpain
//
//  Created by Marin Usalj on 9/18/13.
//
//

#import "TestHelper.h"
#import <Kiwi/Kiwi.h>

@implementation TestHelper

NSDate *atTime(NSString *humanTime) {
    NSDateFormatter *formatta = [NSDateFormatter new];
    [formatta setDateFormat:@"h:mm a"];

    NSLog(@"CURRENT TIME: %@", [formatta stringFromDate:[NSDate date]]);

    return [formatta dateFromString:humanTime];
}

void setTimeTo(NSString *time) {
    [NSDate stub:@selector(date) andReturn:atTime(time)];
}

@end
