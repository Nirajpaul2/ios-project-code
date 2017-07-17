//
//  ViewController.m
//  TwitterDemo
//
//  Created by niraj paul on 21/11/15.
//  Copyright (c) 2015 niraj paul. All rights reserved.
//

#import "ViewController.h"
#import "STTwitter.h"
#import "STTwitterAPI.h"

@interface ViewController ()
- (IBAction)twitterButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)twitterButton:(id)sender {
    
    STTwitterAPI *twitter = [STTwitterAPI twitterAPIWithOAuthConsumerKey:@"Kp3XsxYae0qoeZats8Wq5IRCz"
                                                          consumerSecret:@"qZJeveUkcQcaYAG5NPLCXCF6RPkoGf38gBobqNvkxGkMYHO1X5"
                                                               ];
    [twitter verifyCredentialsWithUserSuccessBlock:^(NSString *username, NSString *userID) {
        
        NSLog(@"screenName>>>>");
        
        [twitter getUserTimelineWithScreenName:@"paul_niraj"
                                  successBlock:^(NSArray *statuses) {
                                      // ...
                                  } errorBlock:^(NSError *error) {
                                      // ...
                                  }];
        
    } errorBlock:^(NSError *error) {
        // ...
    }];
}
@end
