//
//  Option4ViewController.m
//  loginOptions
//
//  Created by Gabriel Massana on 22/07/2014.
//  Copyright (c) 2014 Gabriel Massana. All rights reserved.
//

#import "Option4ViewController.h"
#import "KeyboardController.h"

@interface Option4ViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *usernameLoginField;
@property (strong, nonatomic) IBOutlet UITextField *passwordLoginField;
@property (strong, nonatomic) KeyboardController *keyboardController;

@end

@implementation Option4ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    id fields = @[self.usernameLoginField, self.passwordLoginField];
    self.keyboardController = [KeyboardController controllerWithFields:fields];
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
    if (textField == self.passwordLoginField)
    {
        [self.passwordLoginField resignFirstResponder];
        [self logIn];
    }
    
    return true;
}

- (IBAction)logIn
{
    NSLog(@"Username: %@ - Password: %@", self.usernameLoginField.text, self.passwordLoginField.text);
    //Whatever
}

@end
