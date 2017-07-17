//
//  ViewController.m
//  NSmutableStringDemo
//
//  Created by niraj paul on 03/01/16.
//  Copyright © 2016 TCS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{

    NSString *stringVariable;
    NSMutableString *mutstring;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    stringVariable = @"my name is";
//    
//    mutstring = [NSMutableString stringWithString:stringVariable ];
//    
//    [mutstring insertString:@" niraj" atIndex:10];
//    NSLog(@"name:%@",stringVariable);
//    NSLog(@"mut:%@",mutstring);
    
//    NSString *loop1=@"";
//    for (int i =0; i <= 10; i++) {
//        if (i > 5) {
//            loop1 = [loop1 substringToIndex:[loop1 length] - 1];
//        }
//        else {
//            loop1 = [loop1 stringByAppendingString:[NSString stringWithFormat:@"%i", i]];
//        }
//        NSLog (@" %@" , loop1);
//    }
//    
//    
//    
////--------------------------------------------------------------------------------------------------------------------------------------------------
//    
//    
//    NSString *loop = @"";
//    NSString *spaces = @"     ";
//    for (int i = 1; i <= 5; i++)
//    {
//        if (i==1) {
//            loop = [loop stringByAppendingString:[NSString stringWithFormat:@"%@%i", [spaces substringFromIndex:i], i - 1]];
//        } else {
//            loop = [loop substringFromIndex:6 - i];
//            loop = [[NSString stringWithFormat:@"%@%i",[spaces substringFromIndex:i], i - 1] stringByAppendingString:[loop stringByAppendingString:[NSString stringWithFormat:@"%i", i - 1]]];
//        }
//        NSLog(@" %@", loop);
//    }
//
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
