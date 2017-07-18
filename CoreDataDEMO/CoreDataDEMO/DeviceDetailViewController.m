//
//  DeviceDetailViewController.m
//  CoreDataDEMO
//
//  Created by niraj paul on 09/12/15.
//  Copyright (c) 2015 TCS. All rights reserved.
//

#import "DeviceDetailViewController.h"

@interface DeviceDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textName;
@property (weak, nonatomic) IBOutlet UITextField *textVersion;
@property (weak, nonatomic) IBOutlet UITextField *textcompany;
- (IBAction)Savebutton:(id)sender;
- (IBAction)BackButton:(id)sender;

@end

@implementation DeviceDetailViewController
- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Savebutton:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    
    // Create a new managed object
    NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Device" inManagedObjectContext:context];
    [newDevice setValue:self.textName.text forKey:@"name"];
    [newDevice setValue:self.textVersion.text forKey:@"version"];
    [newDevice setValue:self.textcompany.text forKey:@"company"];
    
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)BackButton:(id)sender {
}
@end
