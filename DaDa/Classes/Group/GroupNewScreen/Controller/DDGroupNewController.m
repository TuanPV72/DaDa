//
//  DDController.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDGroupNewController.h"
#import "DDGroupNewView.h"
#import "SWRevealViewController.h"
#import "DDAppDelegate.h"

@interface DDGroupNewController ()<DDGroupNewViewDelegate>
{
    DDGroupNewView *_gNewView;
}

@end

@implementation DDGroupNewController

-(void)loadView
{
    [super loadView];
    
    _gNewView = [[DDGroupNewView alloc] initWithFrame:CGRectZero];
    
    _gNewView.delegate = self;
    self.view = _gNewView;
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

#pragma mark - DDGroupNewViewDelegate

-(void)closePopup
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)goToCreatNew
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
    //__TODO: Creat New A Group
    
}

@end
