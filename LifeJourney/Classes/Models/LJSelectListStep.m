//
//  LJPickFromListStep.m
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJSelectListStep.h"

@implementation LJSelectListStep

- (id)initWithDictionary:(NSDictionary *)stepDict {
    if (self = [super initWithDictionary:stepDict]) {
        self.items = stepDict[@"items"];
        self.amount = [stepDict[@"amount"] intValue];
    }
    
    return self;
}

@end
