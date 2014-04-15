//
//  LJTool.m
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJTool.h"

@implementation LJTool

- (id) init {
    if (self == [super init]) {
        self.steps = [NSMutableArray new];
    }
    
    return self;
}

+ (id) toolWithDictionary:(NSDictionary *)toolDict {
    LJTool *tool = [LJTool new];
    tool.title = toolDict[@"title"];
    for (NSDictionary *stepDict in toolDict[@"steps"]) {
        [tool.steps addObject:[LJStep stepWithDictionary:stepDict]];
    }
    
    return tool;
}

@end
