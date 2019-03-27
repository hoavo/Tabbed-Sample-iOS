//
//  ThirdPartyTokenViewController.m
//  ProperWhiskey
//
//  Created by Popdeem on 12/02/2019.
//  Copyright © 2019 Niall Quinn. All rights reserved.
//

#import "ThirdPartyTokenViewController.h"
#import "PopdeemSDK.h"

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>



@interface ThirdPartyTokenViewController ()

@property (strong, nonatomic) IBOutlet UILabel *tokenLabel;

@end

@implementation ThirdPartyTokenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    // Optional: Place the button in the center of your view.
    loginButton.center = self.view.center;
    [self.view addSubview:loginButton];
    
    

}

- (IBAction)generateNewToken:(id)sender {
    
    NSString *facebookUserID = @"105795063903763";
    NSString *facebookAccessToken = @"EAAYP4vypxZC4BAE09QxhZBLs8VBvBmaNAsWGyHvKUVa9yUWz5Uq6uCdUvo1k6ViTeYbPo6yTtd6UAGNCMuxHHZCupf1P2X7nOZAgvdztIpJUOBdXyMCUVrPxBsU7AeAfijNlGRf9ZBqwtf5m95WRS8JZCBeceRmQ2XusO1KZB5iAQrvmHuli1NZBMdfgEIBAk5ar2pl0brcBfeO2ZAR0JNUaSXvAB76ZCTaueFS9tN9aG5MonBh5RMsvIf";
    
    
   //[PopdeemSDK setFacebookCredentials:facebookAccessToken facebookId:facebookUserID];
    
    /*
    int *token = arc4random_uniform(10000000000000000000);
    NSString *tokenString = [NSString stringWithFormat:@"%d", token];

    _tokenLabel.text = tokenString;
    [PopdeemSDK setThirdPartyUserToken:tokenString];
     */

}


@end
