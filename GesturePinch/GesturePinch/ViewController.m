//
//  ViewController.m
//  GesturePinch
//
//  Created by niraj paul on 07/01/16.
//  Copyright © 2016 TCS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(IBAction)ZoomIn:(UIPinchGestureRecognizer *)recognizer{

    recognizer.view.transform =
    CGAffineTransformScale(recognizer.view.transform, recognizer.scale,
                           recognizer.scale);
    recognizer.scale = 1;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
