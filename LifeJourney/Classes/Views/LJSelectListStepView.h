//
//  LJSelectListStepView.h
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJStepView.h"
#import "LJSelectListStep.h"
@interface LJSelectListStepView : LJStepView <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *selectedItems;
@property (nonatomic, strong) LJSelectListStep *step;

- (NSNumber *) viewHeight;

@end
