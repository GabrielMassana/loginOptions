//
//  Option2ViewController.m
//  loginOptions
//
//  Created by Gabriel Massana on 21/07/2014.
//  Copyright (c) 2014 Gabriel Massana. All rights reserved.
//

#import "Option2ViewController.h"
#import "Option2JoinViewController.h"

@interface Option2ViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *usernameLoginField;
@property (strong, nonatomic) IBOutlet UITextField *passwordLoginField;

@end

@implementation Option2ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];

    // Assign delegate 
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
    
        //This Identifier is in the Storyboard
        [self performSegueWithIdentifier:@"option2Segue" sender:self];

    }
    
    return true;
}



 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
     [(Option2JoinViewController *)segue.destinationViewController setUsername:self.usernameLoginField.text];
     [(Option2JoinViewController *)segue.destinationViewController setPassword:self.passwordLoginField.text];
 }
 

@end
