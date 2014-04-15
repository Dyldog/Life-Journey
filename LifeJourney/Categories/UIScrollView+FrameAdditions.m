//
//  UIScrollView+FrameAdditions.m
//  LifeJourney
//
//  Created by Dylan Elliott on 3/12/2013.
//  Copyright (c) 2013 Dylan Elliott. All rights reserved.
//

#import "UIScrollView+FrameAdditions.h"

@implementation UIScrollView (FrameAdditions)

- (CGFloat)$contentWidth { return self.contentSize.width; }
- (void)set$contentWidth:(CGFloat)width { self.contentSize = (CGSize){  .height=self.contentSize.height, .width=width }; }

- (CGFloat)$contentHeight { return self.contentSize.width; }
- (void)set$contentHeight:(CGFloat)height { self.contentSize = (CGSize){  .height=height, .width=self.contentSize.width }; }


- (NSString *)contentSizeDescription {
    return [NSString stringWithFormat:@"W: %f, H: %f", self.$contentWidth, self.$contentHeight];
}
@end
