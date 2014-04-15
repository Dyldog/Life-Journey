//
//  LJTool.h
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LJStep.h"

@interface LJTool : NSObject

+ (id) toolWithDictionary:(NSDictionary *)toolDict;

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSMutableArray *steps;

@end
