//
//  ViewController.m
//  upm
//
//  Created by jorgev on 20/09/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize user;

@synthesize password;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)validate:(id)sender {
    
    NSString *msg = [NSString stringWithFormat:@"User: %@ pass: %@", [user text], [password text]];
    
    UIAlertView *validateAlert = [[UIAlertView alloc]
                                    initWithTitle:@"Datos" message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    NSLog(@"%@", msg); 
    
    // Display the message
    [validateAlert show];
    
     [self performSegueWithIdentifier:@"login" sender:self];
}

@end
