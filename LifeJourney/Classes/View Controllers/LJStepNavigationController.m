//
//  LJStepNavigationController.m
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJStepNavigationController.h"
#import "LJStepViewController.h"

@implementation LJStepNavigationController

- (id) initWithNavigationController:(UINavigationController *)navController ForTool:(LJTool *)tool {
    self = [super init];
    if (self) {
        // Custom initialization
        _currentIdx = -1;
        _navigationController = navController;
        _tool = tool;
        _previousViewController = _navigationController.topViewController;
        [self nextStep];
    }
    return self;
}

- (void) nextStep {
    _currentIdx++;
    if (_currentIdx < self.tool.steps.count) {
        LJStepViewController *stepViewController = [[LJStepViewController alloc] initWithStep:self.tool.steps[_currentIdx]];
        stepViewController.stepNavigationController = self;
        
        [_navigationController pushViewController:stepViewController animated:YES];
    } else {
        [self.navigationController popToViewController:_previousViewController animated:YES];
    }
}

@end
