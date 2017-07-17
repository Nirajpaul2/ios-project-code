//
//  TWLViewController.h
//  TWLogin
//
//  Created by niraj paul on 21/11/15.
//  Copyright (c) 2015 niraj paul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "STTwitter.h"

@interface TWLViewController : UIViewController<STTwitterAPIOSProtocol>
@property (weak, nonatomic) IBOutlet UILabel *mylbl;

- (IBAction)twitterlogin:(id)sender;
- (void)setOAuthToken:(NSString *)token oauthVerifier:(NSString *)verfier;

@end
