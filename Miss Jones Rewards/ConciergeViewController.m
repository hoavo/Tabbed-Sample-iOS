//
//  ConciergeViewController.m
//  Miss Jones Rewards
//
//  Created by Popdeem on 17/08/2018.
//  Copyright © 2018 Niall Quinn. All rights reserved.
//

#import "ConciergeViewController.h"

@interface ConciergeViewController ()

@end

@implementation ConciergeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webview.delegate = self;
    NSString *stringURL = @"https://missjones90.typeform.com/to/RyuDWD";
    NSURL *URL = [NSURL URLWithString:stringURL];
    
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:URL];
    [self.webview loadRequest:requestURL];
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    [self.activityIndicator startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self.activityIndicator stopAnimating];
    self.activityIndicator.hidesWhenStopped = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
