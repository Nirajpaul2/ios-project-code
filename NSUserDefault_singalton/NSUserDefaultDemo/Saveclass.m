//
//  Saveclass.m
//  NSUserDefaultDemo
//
//  Created by niraj paul on 28/11/15.
//  Copyright (c) 2015 niraj paul. All rights reserved.
//

#import "Saveclass.h"

@implementation Saveclass


+(Saveclass*)sharedInstance {
    
    static Saveclass *sharedInstance_ = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        sharedInstance_ = [[Saveclass alloc] init];
        
    });
    
    
    return sharedInstance_;

}






@end
