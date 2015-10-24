//
//  EditAlumnoViewController.h
//  upm
//
//  Created by jorgev on 24/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditAlumnoViewController : UIViewController<UIImagePickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *name;

@property (weak, nonatomic) IBOutlet UITextField *email;

@property (weak, nonatomic) IBOutlet UIImageView *photo;

- (IBAction)takePhoto:(id)sender;


@end
