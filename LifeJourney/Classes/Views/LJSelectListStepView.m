//
//  LJSelectListStepView.m
//  LifeJourney
//
//  Created by Dylan Elliott on 15/04/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJSelectListStepView.h"
#import "LJStepViewController.h"

@implementation LJSelectListStepView

- (id)initWithSize:(CGSize)size step:(LJStep *)step
{
    self = [super initWithSize:size step:step];
    if (self) {
        // Initialization code
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _selectedItems = [NSMutableArray new];
        
        _tableView.frame = self.bounds;
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.scrollEnabled = NO;
        _tableView.userInteractionEnabled = NO;
        [_tableView reloadData];
        [self addSubview:_tableView];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.tableView.frame = CGRectMake(0, 0, self.$width, self.tableView.rowHeight * [self tableView:self.tableView numberOfRowsInSection:0]);
    self.$height = self.tableView.$bottom;
}

- (void) sizeToFit {
    [super sizeToFit];
    
    self.$height = self.tableView.$bottom;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.step.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellID = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = self.step.items[indexPath.row];
    cell.accessoryType = [self.selectedItems containsObject:@(indexPath.row)] ? UITableViewCellAccessoryCheckmark : UITableViewCellAccessoryNone;
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if ([self.selectedItems containsObject:@(indexPath.row)]) {
        [self.selectedItems removeObject:@(indexPath.row)];
    } else if (self.selectedItems.count < self.step.amount) {
        [self.selectedItems addObject:@(indexPath.row)];
    } else {
        [[[UIAlertView alloc] initWithTitle:@"" message:[NSString stringWithFormat:@"You can only choose %d items. Deselect one of the items you chose to add this one.", self.step.amount] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil] show];
    }
    
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    
    self.stepViewController.continueButtonHidden = self.selectedItems.count < self.step.amount;
}

- (NSNumber *) viewHeight {
    return @(self.tableView.$height);
}

@end
