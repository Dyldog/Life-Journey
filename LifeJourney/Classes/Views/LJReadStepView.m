//
//  LJReadStepView.m
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJReadStepView.h"

@implementation LJReadStepView

- (id)initWithSize:(CGSize)size step:(LJStep *)step
{
    self = [super initWithSize:size step:step];
    if (self) {
        // Initialization code
        _titleLabel = [UILabel new];
        _titleLabel.font = [UIFont stepTitleFont];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.numberOfLines = 0;
        [self addSubview:_titleLabel];
        
        _textLabel = [UILabel new];
        _textLabel.textAlignment = NSTextAlignmentCenter;
        _textLabel.numberOfLines = 0;
        [self addSubview:_textLabel];
        
    }
    return self;
}

- (void) layoutSubviews {
    [super layoutSubviews];
    self.titleLabel.$size = [self.titleLabel sizeThatFits:CGSizeMake(self.$width, 9999)];
    self.titleLabel.$width = self.$width;
    
    self.textLabel.$y = self.titleLabel.$bottom + (self.titleLabel.$height > 0 ? 10 : 0);
    self.textLabel.$size = [self.textLabel sizeThatFits:CGSizeMake(self.$width, 9999)];
}

- (void) sizeToFit {
    [super sizeToFit];
    
    [self setNeedsLayout];
    [self layoutIfNeeded];
    
    self.$height = self.textLabel.$bottom;
}

- (void) update {
    [super update];
    
    self.titleLabel.text = [self.step title];
    self.textLabel.text = [self.step text];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
