//
//  ViewController.m
//  UIViewGeometryTest
//
//  Created by Admin on 19.06.2018.
//  Copyright © 2018 Sergio Lechini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 150, 50)];
    view1.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.7];
    
    UIView* view2= [[UIView alloc] initWithFrame:CGRectMake(180, 90, 70, 30)];
    view2.backgroundColor = [[UIColor greenColor] colorWithAlphaComponent:0.5];
    
    [self.view addSubview:view1];
    [self.view addSubview:view2];
    
    [self.view bringSubviewToFront:view1]; //поставили view1 выше view2
    //view.superview.backgroundColor = [UIColor blueColor]; у каждой вью есть родительский вью
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
