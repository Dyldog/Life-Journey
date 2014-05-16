//
//  LJWriteMultipleStep.m
//  LifeJourney
//
//  Created by Dylan Elliott on 16/05/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJWriteMultipleStep.h"

@implementation LJWriteMultipleStep

- (id)initWithDictionary:(NSDictionary *)stepDict {
    if (self = [super initWithDictionary:stepDict]) {
        self.questions = stepDict[@"questions"];
    }
    
    return self;
}

@end
