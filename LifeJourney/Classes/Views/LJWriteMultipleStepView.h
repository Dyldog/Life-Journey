//
//  LJWriteMultipleStepView.h
//  LifeJourney
//
//  Created by Dylan Elliott on 16/05/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJStepView.h"
#import "LJWriteMultipleStep.h"

@interface LJWriteMultipleStepView : LJStepView

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *textLabel;
@property (nonatomic, strong) NSMutableArray *questionViews;

@end
