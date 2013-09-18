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
@property(assign) NSUInteger counter;
@end

@implementation TicketMachine

- (Ticket *)nextTicket {
    Ticket *ticket = [Ticket new];
    ticket.number = @([self incrementedCounter]);

    return ticket;
}

#pragma mark - Private

- (NSUInteger)incrementedCounter {
    self.counter ++;
    return self.counter;
}

@end
