//
//  LJReadStep.m
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJReadStep.h"

@implementation LJReadStep

- (id)initWithDictionary:(NSDictionary *)stepDict {
    if (self = [super initWithDictionary:stepDict]) {
        self.title = stepDict[@"title"];
        self.text = stepDict[@"text"];
    }
    
    return self;
}

@end
