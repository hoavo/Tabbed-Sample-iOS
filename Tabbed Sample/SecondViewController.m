//
//  SecondViewController.m
//  Tabbed Sample
//
//  Created by Niall Quinn on 08/01/2018.
//  Copyright © 2018 Niall Quinn. All rights reserved.
//

#import "PopdeemSDK.h"
#import "SecondViewController.h"
#import "PDUIDirectToSocialHomeHandler.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)directButtonAction:(id)sender {
  PDUIDirectToSocialHomeHandler *handler = [[PDUIDirectToSocialHomeHandler alloc] init];
  [handler handleHomeFlow];
}

@end
