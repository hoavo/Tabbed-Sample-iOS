//
//  WebpageViewController.m
//  Miss Jones Rewards
//
//  Created by Popdeem on 17/08/2018.
//  Copyright © 2018 Niall Quinn. All rights reserved.
//

#import "WebpageViewController.h"

@interface WebpageViewController ()

@end

@implementation WebpageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webview.delegate = self;
    NSString *stringURL = @"https://missjonespa.com/";
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
