//
//  LJStep.h
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {Read = 1, Write, SelectList} LJStepType;
#define LJStepTypeString(enum) [@[@"Read",@"Write",@"SelectList"] objectAtIndex:enum - 1]

@interface LJStep : NSObject

+ (id) stepWithDictionary:(NSDictionary *)stepDict;
- (id) initWithDictionary:(NSDictionary *)stepDict;

+ (Class) stepClassForInt:(int)typeNum;

@end
