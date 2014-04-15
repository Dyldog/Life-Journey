//
//  LJBaseViewController.h
//  LifeJourney
//
//  Created by Dylan Elliott on 3/12/2013.
//  Copyright (c) 2013 Dylan Elliott. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LJBaseViewController : UIViewController {
    UITapGestureRecognizer *hideKeyboardGestureRecogniser;
}

- (void) keyboardWillShow:(NSNotification *)notification;
- (void) keyboardDidShow:(NSNotification *)notification;
- (void) keyboardWillHide:(NSNotification *)notification;
- (void) keyboardDidHide:(NSNotification *)notification;
@end
