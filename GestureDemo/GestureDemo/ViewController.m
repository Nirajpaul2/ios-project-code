//
//  ViewController.m
//  GestureDemo
//
//  Created by niraj paul on 07/01/16.
//  Copyright © 2016 TCS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)pressme:(UITapGestureRecognizer *) recognizer
{

_myLbl.text =@"pressed";

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
