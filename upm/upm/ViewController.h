//
//  ViewController.h
//  upm
//
//  Created by jorgev on 20/09/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *user;

@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)validate:(id)sender;





@end

