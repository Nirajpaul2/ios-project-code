//
//  Saveclass.h
//  NSUserDefaultDemo
//
//  Created by niraj paul on 28/11/15.
//  Copyright (c) 2015 niraj paul. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Saveclass : NSObject

@property (nonatomic,strong) NSString *savefirstname,*savelastname;

+(Saveclass*)sharedInstance;


@end
