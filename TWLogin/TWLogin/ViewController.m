//
//  ViewController.m
//  TWLogin
//
//  Created by niraj paul on 21/11/15.
//  Copyright (c) 2015 niraj paul. All rights reserved.
//

#import "ViewController.h"
#import "TWLViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TWLViewController *class = (TWLViewController *)[[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle] ]instantiateViewControllerWithIdentifier:@"TWLViewController"];
    
    [self.navigationController pushViewController:class animated:YES];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
