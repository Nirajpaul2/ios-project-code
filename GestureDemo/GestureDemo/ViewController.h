//
//  ViewController.h
//  GestureDemo
//
//  Created by niraj paul on 07/01/16.
//  Copyright © 2016 TCS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *myLbl;

-(IBAction)pressme:(UITapGestureRecognizer *) recognizer;

@end

