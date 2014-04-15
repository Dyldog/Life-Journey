//
//  LJStepNavigationController.h
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LJStepNavigationController : UINavigationController {
    int _currentIdx;
    UIViewController *_previousViewController;
}

@property (nonatomic, strong) UINavigationController *navigationController;
@property (nonatomic, strong) LJTool *tool;

- (id) initWithNavigationController:(UINavigationController *)navController ForTool:(LJTool *)tool;

- (void) nextStep;

@end
