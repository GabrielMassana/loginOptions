//
//  Option3ViewController.h
//  loginOptions
//
//  Created by Gabriel Massana on 21/07/2014.
//  Copyright (c) 2014 Gabriel Massana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Option3DelegateViewController.h"

@interface Option3ViewController : UIViewController <Option3Delegate>

- (void) logIn: (NSString *) username password: (NSString *) password;

@end
