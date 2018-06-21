//
//  ViewController.m
//  UIViewGeometryTest
//
//  Created by Admin on 19.06.2018.
//  Copyright © 2018 Sergio Lechini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) UIView* testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 150, 50)];
    view1.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.7];
    
    //view1.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight |
        //UIViewAutoresizingFlexibleLeftMargin;
    
    UIView* view2= [[UIView alloc] initWithFrame:CGRectMake(180, 90, 70, 180)];
    view2.backgroundColor = [[UIColor greenColor] colorWithAlphaComponent:0.5];
    
    view2.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin;
    
    [self.view addSubview:view1];
    [self.view addSubview:view2];
    
    self.testView = view2;
    
    [self.view bringSubviewToFront:view1]; //поставили view1 выше view2
    //view.superview.backgroundColor = [UIColor blueColor]; у каждой вью есть родительский вью
    
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    
//    NSLog(@"\nframe = %@\nbounds = %@", NSStringFromCGRect(self.testView.frame), NSStringFromCGRect(self.testView.bounds));
    
//    NSLog(@"\nframe = %@\nbounds = %@", NSStringFromCGRect(self.view.frame),
//          NSStringFromCGRect(self.view.frame));
    
    CGPoint origin = CGPointZero;
    
    
    
    origin = [self.view convertPoint:origin toView:self.view.window];
    
    NSLog(@"origin = %@", NSStringFromCGPoint(origin));
    
    CGRect r = self.view.bounds;
    r.origin.y = 0;
    r.origin.x = CGRectGetWidth(r) - 100;
    r.size = CGSizeMake(100, 100);
    
    UIView* v = [[UIView alloc] initWithFrame:r];
    v.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.8];
    [self.view addSubview:v];
    
    
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    NSLog(@"rotate done");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
