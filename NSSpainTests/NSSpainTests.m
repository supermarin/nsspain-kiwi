//
//  NSSpainTests.m
//  NSSpainTests
//
//  Created by Xavier Jurado on 18/09/13.
//
//

#import "NSSpainTests.h"
#import <Kiwi/Kiwi.h>
#import "TicketMachine.h"
#import "Ticket.h"
#import "TestHelper.h"


SPEC_BEGIN(sample)

describe(@"sample spec", ^{

    __block TicketMachine *machine;

    beforeEach(^{
        machine = [TicketMachine new];
    });

    it(@"starts with 1", ^{
        Ticket *ticket = [machine nextTicket];
        [[ticket.number should] equal:@1];
    });

    it(@"increments the number for each ticket", ^{
        for(int i = 0; i < 5; i++) {
            [machine nextTicket];
        }

        Ticket *ticket = [machine nextTicket];
        [[ticket.number should] equal:@6];
    });



    context(@"working times", ^{

        it(@"works from 8AM", ^{
//            atTime(@"5:00 PM");
        });

    });


});

SPEC_END