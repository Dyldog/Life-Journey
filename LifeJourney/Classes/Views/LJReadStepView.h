//
//  LJReadStepView.h
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJStepView.h"
#import "LJReadStep.h"
@interface LJReadStepView : LJStepView

@property (nonatomic, strong) LJReadStep *step;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *textLabel;

@end
