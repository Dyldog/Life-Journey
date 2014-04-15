//
//  LJStepView.m
//  LifeJourney
//
//  Created by Dylan Elliott on 8/12/2013.
//  Copyright (c) 2013 Dylan Elliott. All rights reserved.
//

#import "LJStepView.h"
#import "LJStepViewController.h"
@implementation LJStepView

+ (id) stepViewWithSize:(CGSize)size forStep:(LJStep *)step {
    Class stepViewClass = NSClassFromString([NSString stringWithFormat:@"%@View", NSStringFromClass([step class])]);
    LJStepView *stepView = [[stepViewClass alloc] initWithSize:size step:step];
    
    return stepView;
}

- (id)initWithSize:(CGSize)size step:(LJStep *)step
{
    self = [super initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    if (self) {
        _step = step;        
    }
    return self;
}

- (void) update {

}

@end
