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
        setTimeTo(@"12:00 PM");
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


        it(@"doesn't work before 8", ^{
            setTimeTo(@"7:59 PM");
            [[[machine nextTicket] should] beNil];
        });

        it(@"works from 8AM", ^{
            setTimeTo(@"8:00 AM");
            [[[machine nextTicket].number should] equal:@1];
        });

        it(@"doesn't work after 4:00 PM", ^{
            setTimeTo(@"4:01 PM");

            [[[machine nextTicket] should] beNil];
        });
        




    });


});

SPEC_END