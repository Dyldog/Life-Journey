//
//  LJPickFromListStep.h
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJReadStep.h"

@interface LJSelectListStep : LJReadStep
@property (nonatomic, assign) int amount;
@property (nonatomic, strong) NSArray *items;
@end
