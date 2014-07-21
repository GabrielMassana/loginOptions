//
//  Option3ViewController.m
//  loginOptions
//
//  Created by Gabriel Massana on 21/07/2014.
//  Copyright (c) 2014 Gabriel Massana. All rights reserved.
//

#import "Option3ViewController.h"

@interface Option3ViewController ()

@end

@implementation Option3ViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) logIn: (NSString *) username password: (NSString *) password
{
    NSLog(@"Username: %@ - Password: %@", username, password);

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"option3Delegate"])
	{
		((Option3DelegateViewController *) segue.destinationViewController).delegate = self;
	}
}

@end
