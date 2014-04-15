//
//  LJStepView.h
//  LifeJourney
//
//  Created by Dylan Elliott on 8/12/2013.
//  Copyright (c) 2013 Dylan Elliott. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LJStepViewController;
@interface LJStepView : UIView

@property (nonatomic, strong) LJStep *step;
@property (nonatomic, strong) LJStepViewController *stepViewController;

+ (id) stepViewWithSize:(CGSize)size forStep:(LJStep *)step;
- (id)initWithSize:(CGSize)size step:(LJStep *)step;

- (void) update;

@end
