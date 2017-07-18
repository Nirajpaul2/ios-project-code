//
//  ViewController.m
//  GestureRotate
//
//  Created by niraj paul on 07/01/16.
//  Copyright © 2016 TCS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)rotateImage:(UIRotationGestureRecognizer *) recognizer{

    recognizer.view.transform =
    CGAffineTransformRotate(recognizer.view.transform, recognizer.rotation);
    recognizer.rotation = 0;

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
