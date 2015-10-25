//
//  AvisoViewController.h
//  upm
//
//  Created by jorgev on 25/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AvisoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UITextView *textDescription;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property NSUInteger index;
@property NSString *titleText;
@property NSString *descriptionText;

@end
