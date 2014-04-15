//
//  LJStepViewController.h
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJBaseViewController.h"
#import "LJStepNavigationController.h"
#import "LJStepView.h"
@interface LJStepViewController : LJBaseViewController

@property (nonatomic, strong) LJStep *step;
@property (nonatomic, strong) LJStepView *stepView;
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) LJStepNavigationController *stepNavigationController;

@property (nonatomic, assign) BOOL continueButtonHidden;
@property (nonatomic, strong) id continueButton;

- (id) initWithStep:(LJStep *)step;

@end
