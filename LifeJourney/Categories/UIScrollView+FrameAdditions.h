//
//  UIScrollView+FrameAdditions.h
//  LifeJourney
//
//  Created by Dylan Elliott on 3/12/2013.
//  Copyright (c) 2013 Dylan Elliott. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (FrameAdditions)

@property (nonatomic, assign) CGFloat $contentWidth, $contentHeight;
- (NSString *)contentSizeDescription;
@end
