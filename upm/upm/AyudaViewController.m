//
//  AyudaViewController.m
//  upm
//
//  Created by jorgev on 25/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import "AyudaViewController.h"

@interface AyudaViewController ()

@end

@implementation AyudaViewController

@synthesize browser;

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.browser.delegate=self;
    
    [self loadLocalUrl];
    //[self loadRemoteUrl];
    
}

- (void) loadLocalUrl {
    //NSURL *url = [[NSBundle mainBundle] URLForResource:@"ayuda" withExtension:@"html"];
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"ayuda" ofType:@"html"]];
    NSLog(@"%@", url);

    [self.browser loadRequest:[NSURLRequest requestWithURL:url]];
}

- (void) loadRemoteUrl {
    NSMutableURLRequest *request =[NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://www.upm.es"]];
    
    NSURLConnection *urlConnection=[[NSURLConnection alloc] initWithRequest:request delegate:self];

    [self.browser loadRequest:request];
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

- (void)webViewDidStartLoad:(UIWebView * _Nonnull)webView {
    NSLog(@"Start load");
}

- (void)webViewDidFinishLoad:(UIWebView * _Nonnull)webView {
    NSLog(@" Finish load");
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    NSLog(@"%@", error);
}

// HTTPS Challenge
- (BOOL)connection:(NSURLConnection *)connection canAuthenticateAgainstProtectionSpace:(NSURLProtectionSpace *)protectionSpace {
    return YES;
}


- (void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge {
    [challenge.sender useCredential:[NSURLCredential credentialForTrust:challenge.protectionSpace.serverTrust] forAuthenticationChallenge:challenge];
}

/*
 BOOL _Authenticated;
 NSURLRequest *_FailedRequest;
 
 #pragma UIWebViewDelegate
 
 -(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request   navigationType:(UIWebViewNavigationType)navigationType {
 BOOL result = _Authenticated;
 if (!_Authenticated) {
 _FailedRequest = request;
 NSURLConnection *urlConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
 [urlConnection start];
 }
 return result;
 }
 
 #pragma NSURLConnectionDelegate
 
 -(void)connection:(NSURLConnection *)connection willSendRequestForAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge {
 if ([challenge.protectionSpace.authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust]) {
 NSURL* baseURL = [NSURL URLWithString:@"your url"];
 if ([challenge.protectionSpace.host isEqualToString:baseURL.host]) {
 NSLog(@"trusting connection to host %@", challenge.protectionSpace.host);
 [challenge.sender useCredential:[NSURLCredential credentialForTrust:challenge.protectionSpace.serverTrust] forAuthenticationChallenge:challenge];
 } else
 NSLog(@"Not trusting connection to host %@", challenge.protectionSpace.host);
 }
 [challenge.sender continueWithoutCredentialForAuthenticationChallenge:challenge];
 }
 
 -(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)pResponse {
 _Authenticated = YES;
 [connection cancel];
 [self.webView loadRequest:_FailedRequest];
 }
 
 - (void)viewDidLoad{
 [super viewDidLoad];
 
 NSURL *url = [NSURL URLWithString:@"your url"];
 NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
 [self.webView loadRequest:requestURL];
 
 // Do any additional setup after loading the view.
 }
 */

@end
