//
//  AyudaViewController.h
//  upm
//
//  Created by jorgev on 25/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AyudaViewController : UIViewController<UIWebViewDelegate, NSURLConnectionDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *browser;

@end
