//
//  TicketMachine.h
//  NSSpain
//
//  Created by Marin Usalj on 9/18/13.
//
//

#import <Foundation/Foundation.h>

@class Ticket;
@interface TicketMachine : NSObject

- (Ticket *)nextTicket;

@end
