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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)validate:(id)sender {
    
    UIAlertView *validateAlert = [[UIAlertView alloc]
                                    initWithTitle:@"Testing alert" message:@"Testing!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    // Display the message
    [validateAlert show];
}

@end
