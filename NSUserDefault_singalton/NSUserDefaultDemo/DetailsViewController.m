//
//  DetailsViewController.m
//  NSUserDefaultDemo
//
//  Created by niraj paul on 28/11/15.
//  Copyright (c) 2015 niraj paul. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@property (weak, nonatomic) IBOutlet UITextField *Firstnametxt;
@property (weak, nonatomic) IBOutlet UITextField *LastNameTxt;
- (IBAction)SaveButton:(id)sender;
- (IBAction)CloseButtton:(id)sender;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
    
    _firstnamestring = _Firstnametxt.text;
    _Lastnamestring = _LastNameTxt.text;
    
    NSLog(@"details:%@",_firstnamestring);
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated
{


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)SaveButton:(id)sender {
    
    //by using userdefault
    /*
    NSUserDefaults *DataSave = [NSUserDefaults standardUserDefaults];
    [DataSave setObject:_Firstnametxt.text forKey:@"FirstName"];
    [DataSave setObject:_LastNameTxt.text forKey:@"LastName"];
    [DataSave synchronize];
    */
    
    //by using nsobject
    
//    Saveclass *obj = [Saveclass sharedInstance];
//    obj.savefirstname = _Firstnametxt.text;
//    obj.savelastname = _LastNameTxt.text;
//    
    
}

- (IBAction)CloseButtton:(id)sender{
    
    Saveclass *obj = [Saveclass sharedInstance];
    obj.savefirstname = _Firstnametxt.text;
    obj.savelastname = _LastNameTxt.text;
    

   [ [self navigationController]popToRootViewControllerAnimated:YES];
}



@end
