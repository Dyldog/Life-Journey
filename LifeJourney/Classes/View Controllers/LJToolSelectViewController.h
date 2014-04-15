//
//  LJToolSelectViewController.h
//  LifeJourney
//
//  Created by Dylan Elliott on 14/01/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJBaseViewController.h"

@interface LJToolSelectViewController : LJBaseViewController

- (id)initWithTools:(NSArray *)tools;
- (void) toolButtonTapped:(UIButton *)sender;

@property (nonatomic, strong) NSArray *tools;

@end
