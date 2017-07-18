//
//  ViewController.m
//  NSUserDefaultDemo
//
//  Created by niraj paul on 28/11/15.
//  Copyright (c) 2015 niraj paul. All rights reserved.
//

#import "ViewController.h"
#import "DetailsViewController.h"
#import "AppDelegate.h"


#define UIstorybord2 [UIStoryboard storyboardWithName:@"Main" bundle:nil]
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *firstNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *LastNamelbl;
- (IBAction)ButtonAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *GetDataButton;

- (IBAction)Getdatabutton:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
   
   /*
    NSUserDefaults *DataSave = [NSUserDefaults standardUserDefaults];
    NSString *firstnm = [DataSave objectForKey:@"FirstName"];
    NSString *lastnm = [DataSave objectForKey:@"LastName"];
    
    _firstNameLbl.text = firstnm;
    _LastNamelbl.text = lastnm;
    */
    
    Saveclass *obj = [Saveclass sharedInstance];
    _firstNameLbl.text = obj.savefirstname;
    _LastNamelbl.text = obj.savelastname;

}

- (IBAction)ButtonAction:(id)sender {
    
    DetailsViewController *detailsObj = (DetailsViewController *)[UIstorybord2 instantiateViewControllerWithIdentifier:@"DetailsViewController"];
    
    [self.navigationController pushViewController:detailsObj animated:NO];
    
}
- (IBAction)Getdatabutton:(id)sender {
   
    /*
    NSUserDefaults *DataSave = [NSUserDefaults standardUserDefaults];
    NSString *firstnm = [DataSave objectForKey:@"FirstName"];
    NSString *lastnm = [DataSave objectForKey:@"LastName"];
    
    _firstNameLbl.text = firstnm;
    _LastNamelbl.text = lastnm;
    */

    
//    Saveclass *obj = [Saveclass sharedInstance];
//    _firstNameLbl.text = obj.savefirstname;
//    _LastNamelbl.text = obj.savelastname;
    
}









@end
