//
//  AvisoViewController.m
//  upm
//
//  Created by jorgev on 25/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import "AvisoViewController.h"
#import "Aviso.h"

@interface AvisoViewController ()

@end

@implementation AvisoViewController

@synthesize labelTitle;
@synthesize textDescription;
@synthesize imageView;
@synthesize pageControl;
@synthesize titleText;
@synthesize description;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.labelTitle.text = self.titleText;
    self.textDescription.text = self.descriptionText;
    NSString *url = @"http://lorempixel.com/g/400/200/";
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
    self.imageView.image = [UIImage imageWithData:imageData];
    self.pageControl.currentPage = _index;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
