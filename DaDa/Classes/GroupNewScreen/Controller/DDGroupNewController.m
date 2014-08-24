//
//  DDController.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDGroupController.h"
#import "DDGroupView.h"
#import "SWRevealViewController.h"
#import "DDAppDelegate.h"

@interface DDGroupController ()
{
    DDGroupView *_homeView;
}

@end

@implementation DDGroupController

-(void)loadView
{
    [super loadView];
    
    _homeView = [[DDGroupView alloc] initWithFrame:CGRectZero];
    
    self.view = _homeView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    SWRevealViewController *revealController =  [self revealViewController];
    
    if (revealController) {
        [self.view addGestureRecognizer:revealController.panGestureRecognizer];
    }
}

@end
