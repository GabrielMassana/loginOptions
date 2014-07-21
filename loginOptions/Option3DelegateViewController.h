//
//  Option3DelegateViewController.h
//  loginOptions
//
//  Created by Gabriel Massana on 21/07/2014.
//  Copyright (c) 2014 Gabriel Massana. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Option3Delegate <NSObject>

- (void) logIn: (NSString *) username password: (NSString *) password;

@end

@interface Option3DelegateViewController : UIViewController
{
    id myDelegate;
}

@property (nonatomic, assign) id<Option3Delegate> delegate;

@end
