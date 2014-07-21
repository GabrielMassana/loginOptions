//
//  Option2JoinViewController.m
//  loginOptions
//
//  Created by Gabriel Massana on 21/07/2014.
//  Copyright (c) 2014 Gabriel Massana. All rights reserved.
//

#import "Option2JoinViewController.h"

@interface Option2JoinViewController ()

@end

@implementation Option2JoinViewController



- (void)viewDidLoad
{
    [super viewDidLoad];

    [self logIn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logIn
{
    NSLog(@"Username: %@ - Password: %@", self.username, self.password);
    //Whatever
}

@end
