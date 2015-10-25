//
//  AvisosPageViewController.h
//  upm
//
//  Created by jorgev on 25/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AvisosPageViewController : UIPageViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) NSArray *avisos;

@end
