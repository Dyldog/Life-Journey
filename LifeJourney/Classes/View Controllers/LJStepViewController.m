//
//  LJStepViewController.m
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJStepViewController.h"
#import "LJSelectListStep.h"
@interface LJStepViewController ()

@end

@implementation LJStepViewController

- (id) initWithStep:(LJStep *)step {
    if (self = [super init]) {
        _step = step;
        _scrollView = [[UIScrollView alloc] init];
        _stepView = [LJStepView stepViewWithSize:CGSizeZero forStep:step];
        _stepView.stepViewController = self;
        
        if ([_step isKindOfClass:[LJSelectListStep class]]) {
            _continueButton = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStylePlain target:self action:@selector(nextButtonTapped)];
        } else {
            _continueButton = [UIButton buttonWithType:UIButtonTypeSystem];
            [_continueButton setTitle:@"Next" forState:UIControlStateNormal];
            [_continueButton titleLabel].font = [UIFont systemFontOfSize:24];
            [_continueButton sizeToFit];
            
        }
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.scrollView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.scrollView];
    
    [self.stepView update];
    [self.scrollView addSubview:self.stepView];
    
    if ([self.continueButton isKindOfClass:[UIButton class]]) {
        [self.continueButton set$width: self.view.$width];
        [self.continueButton addTarget:self action:@selector(nextButtonTapped) forControlEvents:UIControlEventTouchUpInside];
        [self.scrollView addSubview:self.continueButton];
    } else {
        self.navigationItem.rightBarButtonItem = (UIBarButtonItem *)self.continueButton;
    }
}

- (void) viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.scrollView.frame = self.view.bounds;
    
    int buttonHeight = [self.continueButton isKindOfClass:[UIButton class]] ? [self.continueButton $height] + 10 : 0;
    self.stepView.$size = CGSizeMake(self.view.$width - 20, self.view.$height - (10 + buttonHeight));
    
    self.stepView.$origin = CGPointMake(10, 10);
    [self.stepView sizeToFit];
    
    if ([self.continueButton isKindOfClass:[UIButton class]]) {
        [self.continueButton set$y: self.stepView.$bottom + 10];
    }
    
    [self.scrollView setContentSize:CGSizeMake(self.view.$width, [[self.scrollView.subviews valueForKeyPath:@"@max.$bottom"] intValue])];
}

- (void) nextButtonTapped {
    [self.stepNavigationController nextStep];
}

- (void) setContinueButtonHidden:(BOOL)continueButtonHidden {
    _continueButtonHidden = continueButtonHidden;
    
    if ([self.continueButton isKindOfClass:[UIButton class]]) {
        [self.continueButton set$height: self.continueButtonHidden ? 0 : [self.continueButton sizeThatFits:CGSizeMake(self.view.$width, 99)].height];
    } else {
        self.navigationItem.backBarButtonItem = self.continueButtonHidden ? nil : self.continueButton;
    }
}
@end
