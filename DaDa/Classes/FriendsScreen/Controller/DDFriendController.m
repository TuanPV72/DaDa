//
//  DDController.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDFriendController.h"
#import "DDFriendView.h"
#import "SWRevealViewController.h"

@interface DDFriendController ()
{
    DDFriendView *_homeView;
}

@end

@implementation DDFriendController

-(void)loadView
{
    [super loadView];
    
    _homeView = [[DDFriendView alloc] initWithFrame:CGRectZero];
    
    self.view = _homeView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /*
    SWRevealViewController *revealController = [self revealViewController];
  
    [self.navigationController.navigationBar addGestureRecognizer:revealController.panGestureRecognizer];
    
    
    UIBarButtonItem *revealButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"reveal-icon.png"]
                                                                         style:UIBarButtonItemStyleBordered target:revealController action:@selector(revealToggle:)];
    
    self.navigationItem.leftBarButtonItem = revealButtonItem;
     
     */
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
