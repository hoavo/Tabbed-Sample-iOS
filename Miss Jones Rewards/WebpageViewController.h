//
//  WebpageViewController.h
//  Miss Jones Rewards
//
//  Created by Popdeem on 17/08/2018.
//  Copyright © 2018 Niall Quinn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebpageViewController : UIViewController <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webview;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
