//
//  ViewController.m
//  CustomDeleteTV
//
//  Created by niraj paul on 30/12/15.
//  Copyright © 2015 TCS. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()<UITableViewDataSource>
{

    NSMutableArray *mutArray;
}
@property (weak, nonatomic) IBOutlet UITableView *MyTblView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    mutArray = [[NSMutableArray alloc]initWithObjects:@"a",@"b",@"v",@"df",@"aa",@"gt",@"fd",@"dg",@"sd",@"df",@"gs",@"sgs", nil];
    
    UINib *interface = [UINib nibWithNibName:@"TableViewCell" bundle:nil];
    [_MyTblView registerNib:interface forCellReuseIdentifier:@"abc"];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return [mutArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    TableViewCell *TVcell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"abc"];
    if (TVcell==0) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:self options:nil];
        TVcell = [nib objectAtIndex:0];

    }
    TVcell.mylabel.text=[mutArray objectAtIndex:indexPath.row];
    
    UISwipeGestureRecognizer *leftsweep = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(myGestureRecogniger:)];
    [leftsweep setDirection:UISwipeGestureRecognizerDirectionLeft];
    [TVcell.myviewscroll addGestureRecognizer:leftsweep];
    
    return TVcell;
}
-(void)myGestureRecogniger:(UISwipeGestureRecognizer *)sender{
    
    NSLog(@"hui");
    UIView *SVIew = sender.view;
    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
