//
//  TicketMachine.m
//  NSSpain
//
//  Created by Marin Usalj on 9/18/13.
//
//

#import "TicketMachine.h"
#import "Ticket.h"

@interface TicketMachine(){}
@property NSUInteger counter;
@end

@implementation TicketMachine

- (Ticket *)nextTicket {

    if (![self isWorkingTime]) {
        return nil;
    }

    Ticket *ticket = [Ticket new];
    ticket.number = @([self incrementedCounter]);

    return ticket;
}

#pragma mark - Private

- (BOOL)isWorkingTime {
    NSDate *now = [NSDate date];

    NSDate *eightAM = [[[self class] sharedDateFormatter] dateFromString:@"8:00 AM"];
    NSDate *fourPM = [[[self class] sharedDateFormatter] dateFromString:@"4:00 PM"];

    if ([now compare:eightAM] == NSOrderedAscending ||
        [now compare:fourPM] == NSOrderedDescending) {
        return NO;
    }

    return YES;
}

#pragma mark - Singleton

+ (NSDateFormatter *)sharedDateFormatter {
    static NSDateFormatter *formatter;
    static dispatch_once_t singletonToken;
    dispatch_once(&singletonToken, ^{
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"h:mm a"];
    });
    return formatter;
}

- (NSUInteger)incrementedCounter {
    self.counter ++;
    return self.counter;
}

@end
