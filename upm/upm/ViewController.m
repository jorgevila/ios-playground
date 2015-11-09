//
//  ViewController.m
//  upm
//
//  Created by jorgev on 20/09/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking/AFHTTPRequestOperationManager.h>
#import "Login.h"

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
    NSLog(@"%@", msg);
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    [manager GET:@"http://149.202.115.63/login" parameters:@{
             @"user" : [user text],
             @"pass" : [password text]
             } success:^(AFHTTPRequestOperation *operation,NSDictionary *JSONResponse) {
                 
                 NSLog(@"%@", JSONResponse);

                 id error;
                 Login *login = [MTLJSONAdapter modelOfClass:Login.class
                           fromJSONDictionary:JSONResponse
                           error:&error];
                 
                 NSLog(@"Login: %@ ¿%@?", login, [login.token length] == 0 ? @"true": @"false");
                 if([login.error length] >0)
                 {
                     NSLog(@"Error: error=%@", login.error);
                     UIAlertView *errorAlert = [[UIAlertView alloc]
                         initWithTitle:@"Login Error" message:login.error delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                     
                     // Display the message
                     [errorAlert show];
                     
                 } else if ([login.token length] > 0){
                     
                     // Store the data
                     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
                     [defaults setObject:login.token forKey:@"token"];
                     [defaults synchronize];
                     
                     NSLog(@"Data saved: token=%@", login.token);
                     [self performSegueWithIdentifier:@"login" sender:self];
                 }
        
             } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                 NSLog(@"Network Error: %@", error);
                 
                 UIAlertView *validateAlert = [[UIAlertView alloc]
                    initWithTitle:@"Error" message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                 
                 // Display the message
                 [validateAlert show];
             }];
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier
                                  sender:(id)sender {
    return NO;
}

@end
