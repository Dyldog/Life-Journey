//
//  LJStep.m
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJStep.h"

@implementation LJStep

+ (id) stepWithDictionary:(NSDictionary *)stepDict {
    Class stepClass = [self stepClassForInt:[stepDict[@"type"] intValue]];
    LJStep *step = [[stepClass alloc] initWithDictionary:stepDict];
    
    return step;
}

- (id) initWithDictionary:(NSDictionary *)stepDict {
    if (self = [super init]) {
        
    }
    
    return self;
}

+ (Class) stepClassForInt:(int)typeNum {
    return NSClassFromString([NSString stringWithFormat:@"LJ%@Step", LJStepTypeString(typeNum)]);
}

@end
