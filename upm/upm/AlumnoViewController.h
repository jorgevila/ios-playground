//
//  AlumnoViewController.h
//  upm
//
//  Created by jorgev on 24/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlumnoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) IBOutlet UILabel *email;

@property (weak, nonatomic) IBOutlet UIImageView *photo;

- (IBAction)update:(UIStoryboardSegue *)sender;

@end
