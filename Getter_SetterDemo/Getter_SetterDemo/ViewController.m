//
//  ViewController.m
//  Getter_SetterDemo
//
//  Created by niraj paul on 04/01/16.
//  Copyright © 2016 TCS. All rights reserved.
//

#import "ViewController.h"
#import "nsobjclass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    nsobjclass *obj = [nsobjclass new];
    [obj setfirsname:@"nirajpaul"];
    
    NSLog(@"print:%@",obj.namestr);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
