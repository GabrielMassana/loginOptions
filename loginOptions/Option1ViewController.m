//
//  Option1ViewController.m
//  loginOptions
//
//  Created by Gabriel Massana on 21/07/2014.
//  Copyright (c) 2014 Gabriel Massana. All rights reserved.
//

#import "Option1ViewController.h"

@interface Option1ViewController () <UIAlertViewDelegate>

@property (nonatomic, strong) UIAlertView* alertView;

@end

@implementation Option1ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];

    self.alertView = [[UIAlertView alloc] initWithTitle:nil
                                                message:@"LogIn"
                                               delegate:self
                                      cancelButtonTitle:nil
                                      otherButtonTitles:@"Cancel", @"Join", nil];
    
    self.alertView.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    
    [self.alertView show];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (alertView == self.alertView)
    {
        if (buttonIndex == 1)
        {
            [self logIn:[[alertView textFieldAtIndex:0] text] andPassword:[[alertView textFieldAtIndex:1] text]];
        }
        else if (buttonIndex == 0)
        {
            [self.navigationController popViewControllerAnimated:YES];
 
        }
    }
}

- (IBAction)logIn: (NSString*) login andPassword: (NSString*) password
{
    NSLog(@"Username: %@ - Password: %@", login, password);
    //Whatever
}

@end
