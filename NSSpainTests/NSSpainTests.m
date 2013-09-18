//
//  NSSpainTests.m
//  NSSpainTests
//
//  Created by Xavier Jurado on 18/09/13.
//
//

#import "NSSpainTests.h"
#import <Kiwi/Kiwi.h>


SPEC_BEGIN(sample)

describe(@"sample spec", ^{

    it(@"fails", ^{
        [[@2 should] equal:@3];
    });

});

SPEC_END