//
//  Option3DelegateViewController.m
//  loginOptions
//
//  Created by Gabriel Massana on 21/07/2014.
//  Copyright (c) 2014 Gabriel Massana. All rights reserved.
//

#import "Option3DelegateViewController.h"

@interface Option3DelegateViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *usernameLoginField;
@property (strong, nonatomic) IBOutlet UITextField *passwordLoginField;
@end

@implementation Option3DelegateViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.usernameLoginField.delegate = self;
    self.passwordLoginField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITextFieldDelegate

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    if (textField == self.usernameLoginField)
    {
        [self.usernameLoginField resignFirstResponder];
        [self.passwordLoginField becomeFirstResponder];
    }
    else if (textField == self.passwordLoginField)
    {
        [self.passwordLoginField resignFirstResponder];
        
        if ([_delegate respondsToSelector:@selector(logIn:password:)])
        {
            [_delegate logIn:self.usernameLoginField.text password:self.passwordLoginField.text];
        }
        
        [self.navigationController popViewControllerAnimated:YES];
    }
    
    return true;
}


@end
