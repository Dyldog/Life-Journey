//
//  LJWriteStepView.m
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJWriteStepView.h"

@implementation LJWriteStepView

- (id)initWithSize:(CGSize)size step:(LJStep *)step {
    self = [super initWithSize:size step:step];
    if (self) {
        // Initialization code
        _textView = [[UITextView alloc] init];
        _textView.layer.cornerRadius = 20;
        _textView.backgroundColor = [UIColor colorWithHex:@"#F7F7F7" alpha:1.0];
        [self addSubview:_textView];

    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    int textViewTop = self.textLabel.$bottom + 10;
    self.textView.frame = CGRectMake(0, textViewTop, self.$width, self.$height - (textViewTop));
}

- (void) sizeToFit {}

@end
