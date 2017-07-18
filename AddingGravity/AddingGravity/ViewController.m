//
//  ViewController.m
//  AddingGravity
//
//  Created by niraj paul on 06/01/16.
//  Copyright © 2016 TCS. All rights reserved.
//

#import "ViewController.h"

@protocol UIDynamicItem <NSObject>
@property (nonatomic, readwrite) CGPoint center;
@property (nonatomic, readonly) CGRect bounds;
@property (nonatomic, readwrite) CGAffineTransform transform;
@end

@interface ViewController ()<UICollisionBehaviorDelegate>
{
    UIDynamicAnimator *dynamicAnimation;
    UIGravityBehavior *gravitybehavier;
UICollisionBehavior* collision;
    BOOL _firstContact;
}
@property (strong, nonatomic) IBOutlet UIView *redV;
@property (strong, nonatomic) IBOutlet UIView *orangV;
@property (strong, nonatomic) IBOutlet UIView *YellowV;
@property (strong, nonatomic) IBOutlet UIView *skycolourV;
@property (strong, nonatomic) IBOutlet UIView *Blurv;
@property (strong, nonatomic) IBOutlet UIView *greenV;
@property (strong, nonatomic) IBOutlet UIView *containerview;
@property (strong, nonatomic) IBOutlet UIView *BounceView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:_containerview];
    
    _BounceView.layer.cornerRadius = 24/2;
    [_containerview addSubview:_BounceView];
    
    
//    _redV.layer.cornerRadius=84/2;
//    [self.view addSubview:_redV];
//    
//    _orangV.layer.cornerRadius=84/2;
//    [self.view addSubview:_orangV];
//    
//    _YellowV.layer.cornerRadius=84/2;
//    [self.view addSubview:_YellowV];
//    
//    _skycolourV.layer.cornerRadius=84/2;
//    [self.view addSubview:_skycolourV];
//    
//    _Blurv.layer.cornerRadius=84/2;
//    [self.view addSubview:_Blurv];
//    
//    _greenV.layer.cornerRadius=84/2;
//    [self.view addSubview:_greenV];
    
    collision.collisionDelegate = self;
    
    
    
//    UIView* square = [[UIView alloc] initWithFrame:
//                      CGRectMake(100, 100, 100, 100)];
//    square.backgroundColor = [UIColor grayColor];
//    [self.view addSubview:square];
//    
//    
//    UIView* barrier = [[UIView alloc]
//                       initWithFrame:CGRectMake(0, 300, 130, 20)];
//    barrier.backgroundColor = [UIColor redColor];
//    [self.view addSubview:barrier];
//
    
    
    dynamicAnimation = [[UIDynamicAnimator alloc] initWithReferenceView:_containerview];
    gravitybehavier = [[UIGravityBehavior alloc] initWithItems:@[_BounceView]];
    [dynamicAnimation addBehavior:gravitybehavier];
    
    
    collision = [[UICollisionBehavior alloc] initWithItems:@[_BounceView]];
    collision.translatesReferenceBoundsIntoBoundary = YES;
    [dynamicAnimation addBehavior:collision];
    
//    dynamicAnimation = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
//    gravitybehavier = [[UIGravityBehavior alloc] initWithItems:@[_redV,_orangV,_YellowV,_skycolourV,_Blurv,_greenV]];
//    [dynamicAnimation addBehavior:gravitybehavier];
//    
//    
//    collision = [[UICollisionBehavior alloc] initWithItems:@[_redV,_orangV,_YellowV,_skycolourV,_Blurv,_greenV]];
//    collision.translatesReferenceBoundsIntoBoundary = YES;
//    [dynamicAnimation addBehavior:collision];
//   CGPoint rightEdge = CGPointMake(barrier.frame.origin.x + barrier.frame.size.width,barrier.frame.origin.y);
////    
//    [collision addBoundaryWithIdentifier:@"barrier"fromPoint:barrier.frame.origin toPoint:rightEdge];
//

  //  collision.action = ^{ NSLog(@"%@, %@",
   //                              NSStringFromCGAffineTransform(square.transform), NSStringFromCGPoint(square.center));
 //   };
    
//    UIDynamicItemBehavior* itemBehaviour =
//    [[UIDynamicItemBehavior alloc] initWithItems:@[_redV,_orangV,_YellowV,_skycolourV,_Blurv,_greenV]];
//    itemBehaviour.elasticity = 1;
//    [dynamicAnimation addBehavior:itemBehaviour];
   
    UIDynamicItemBehavior* itemBehaviour =
    [[UIDynamicItemBehavior alloc] initWithItems:@[_BounceView]];
    itemBehaviour.elasticity = 1.09;
    [dynamicAnimation addBehavior:itemBehaviour];

}

- (void)collisionBehavior:(UICollisionBehavior *)behavior beganContactForItem:(id<UIDynamicItem>)item
   withBoundaryIdentifier:(id<NSCopying>)identifier atPoint:(CGPoint)p {
 
    NSLog(@"Boundary contact occurred - %@", identifier);
    if (!_firstContact) {
        _firstContact = YES;
        UIView* square = [[UIView alloc] initWithFrame:CGRectMake(30, 0, 100, 100)];
        square.backgroundColor = [UIColor greenColor];
        [self.view addSubview:square];
        [collision addItem:square]; [gravitybehavier addItem:square];
        
//        UIAttachmentBehavior* attach = [[UIAttachmentBehavior alloc] initWithItem:view
//                                        [dy addBehavior:attach]; }
//                                                                   attachedToItem:square];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
