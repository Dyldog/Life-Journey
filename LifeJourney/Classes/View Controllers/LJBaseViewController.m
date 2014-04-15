//
//  LJBaseViewController.m
//  LifeJourney
//
//  Created by Dylan Elliott on 3/12/2013.
//  Copyright (c) 2013 Dylan Elliott. All rights reserved.
//

#import "LJBaseViewController.h"

@interface LJBaseViewController ()

@end

@implementation LJBaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];
}

- (void) viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    self.view.frame = self.view.superview.bounds;
}

- (void) keyboardWillShow:(NSNotification *)notification {
    hideKeyboardGestureRecogniser = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    [self.view addGestureRecognizer:hideKeyboardGestureRecogniser];
}
- (void) keyboardDidShow:(NSNotification *)notification {
    
}
- (void) keyboardWillHide:(NSNotification *)notification {
    
}
- (void) keyboardDidHide:(NSNotification *)notification {
    [self.view removeGestureRecognizer:hideKeyboardGestureRecogniser];
    hideKeyboardGestureRecogniser = nil;
}
- (void) hideKeyboard {
    [self.view endEditing:YES];
}
@end
