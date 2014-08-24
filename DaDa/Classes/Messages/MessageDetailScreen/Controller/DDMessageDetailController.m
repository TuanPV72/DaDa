//
//  DDController.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDMessageDetailController.h"
#import "DDMessageDetailView.h"
#import "SWRevealViewController.h"
#import "DDAppDelegate.h"

@interface DDMessageDetailController ()<DDMessageDetailViewDelegate>
{
    DDMessageDetailView *_gNewView;
}

@end

@implementation DDMessageDetailController

@synthesize groupModel;

-(void)loadView
{
    [super loadView];
    
    _gNewView = [[DDMessageDetailView alloc] initWithFrame:CGRectZero];
    
    _gNewView.delegate = self;
    self.view = _gNewView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_gNewView setGroupModel:self.groupModel];
    
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

-(void)backToScreen
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)goToCreatNew
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
    //__TODO: Creat New A Group
    
}

@end