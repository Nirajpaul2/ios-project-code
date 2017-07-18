//
//  ViewController.m
//  GesturePannng
//
//  Created by niraj paul on 07/01/16.
//  Copyright © 2016 TCS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(IBAction)pangesture:(UIPanGestureRecognizer *) recognizer{

    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x +
                                         translation.x,
                                         recognizer.view.center.y + translation.y);
                                         [recognizer setTranslation:CGPointMake(0, 0) inView:self.view];
    
    
    if (recognizer.state == UIGestureRecognizerStateEnded) {
        CGPoint velocity = [recognizer velocityInView:self.view];
        CGFloat magnitude = sqrtf((velocity.x * velocity.x) + (velocity.y *velocity.y));
        CGFloat slideMult = magnitude / 200;
        NSLog(@"magnitude: %f, slideMult: %f", magnitude, slideMult);
        float slideFactor = 0.1 * slideMult; // Increase for more of a slide CGPoint finalPoint = CGPointMake(recognizer.view.center.x +
        
        CGPoint finalPoint = CGPointMake(recognizer.view.center.x + (velocity.x * slideFactor),
        
        recognizer.view.center.y +(velocity.y * slideFactor));
        finalPoint.x = MIN(MAX(finalPoint.x, 0), self.view.bounds.size.width);
        finalPoint.y = MIN(MAX(finalPoint.y, 0), self.view.bounds.size.height);
    
        [UIView animateWithDuration:slideFactor*2 delay:0
                            options:UIViewAnimationOptionCurveEaseOut animations:^{
                                recognizer.view.center = finalPoint;
                            } completion:nil];
}
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
