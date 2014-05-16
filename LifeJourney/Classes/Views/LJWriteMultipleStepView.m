//
//  LJWriteMultipleStepView.m
//  LifeJourney
//
//  Created by Dylan Elliott on 16/05/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJWriteMultipleStepView.h"

@implementation LJWriteMultipleStepView

- (id)initWithSize:(CGSize)size step:(LJStep *)step {
    self = [super initWithSize:size step:step];
    if (self) {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.$width, 1000)];
        _titleLabel.numberOfLines = 0;
        _titleLabel.text = self.step.title;
        _titleLabel.font = [UIFont boldSystemFontOfSize:16];
        [_titleLabel sizeToFit];
        [self addSubview:_titleLabel];
        
        _textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, _titleLabel.$bottom, self.$width, 1000)];
        _textLabel.numberOfLines = 0;
        _textLabel.text = self.step.text;
        [_textLabel sizeToFit];
        [self addSubview:_textLabel];
        
        _questionViews = [NSMutableArray new];
        UIView *lastQView = nil;
        for (NSString *question in [(LJWriteMultipleStep *)self.step questions]) {
            UIView *qView = [self questionViewForString:question];
            [_questionViews addObject:qView];
            qView.$y = lastQView.$bottom + 10;
            if (qView.$y == 10) qView.$y = _textLabel.$bottom + 10;
            [self addSubview:qView];
            lastQView = qView;
        }
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    UIView *lastView = [self.questionViews lastObject];
    self.$size = CGSizeMake(lastView.$width, lastView.$bottom);
}

- (UIView *) questionViewForString:(NSString *)questionString {
    UIView *qView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.$width - 20, 1000)];
    
    UILabel *qLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, qView.$width, qView.$height)];
    qLabel.numberOfLines = 0;
    qLabel.text = questionString;
    [qLabel sizeToFit];
    [qView addSubview:qLabel];
    
    UITextField *qField = [[UITextField alloc] initWithFrame:CGRectMake(0, qLabel.$bottom + 1, qView.$width, 44)];
    qField.backgroundColor = [UIColor colorWithHex:@"#F7F7F7" alpha:1.0];
    [qView addSubview:qField];
    
    qView.$height = qField.$bottom;
    
    return qView;
}

@end
