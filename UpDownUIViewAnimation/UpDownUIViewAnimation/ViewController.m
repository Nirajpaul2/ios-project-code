//
//  ViewController.m
//  UpDownUIViewAnimation
//
//  Created by niraj paul on 04/12/15.
//  Copyright (c) 2015 TCS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    
    int InititaContrentValue;
    
}
@property (weak, nonatomic) IBOutlet UIView *TopUIView;
@property (weak, nonatomic) IBOutlet UIView *DownUIView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *TopUIViewConstrentHight;
- (IBAction)button:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    InititaContrentValue=0;
    _TopUIViewConstrentHight.constant=0;
    InititaContrentValue=(int)_TopUIViewConstrentHight.constant;
    
    
    
    //TOPview
    
    _TopUIView.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"black"]];
    _TopUIView.autoresizingMask=UIViewAutoresizingFlexibleWidth;
    
    
    _DownUIView.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"white"]];
    _DownUIView.autoresizingMask=UIViewAutoresizingFlexibleWidth;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button:(id)sender {

    [UIView animateWithDuration:5 delay:0 options:0 animations:^{
    
    
    }
    completion:<#^(BOOL finished)completion#>
     {
     
     
     }


}
@end
