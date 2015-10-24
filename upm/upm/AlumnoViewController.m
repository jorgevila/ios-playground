//
//  AlumnoViewController.m
//  upm
//
//  Created by jorgev on 24/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import "AlumnoViewController.h"
#import "EditAlumnoViewController.h"

@interface AlumnoViewController ()

@end

@implementation AlumnoViewController

@synthesize name;

@synthesize email;

@synthesize photo;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)update:(UIStoryboardSegue *)segue {
    if ([segue.identifier isEqualToString:@"SaveAlumno"]) {
        
        EditAlumnoViewController *sourceViewController = segue.sourceViewController;
        name.text = [sourceViewController.name text];
        email.text = [sourceViewController.email text];
        photo.image = sourceViewController.photo.image;
    }
}


@end
