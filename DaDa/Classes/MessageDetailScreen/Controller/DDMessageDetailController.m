//
//  DDController.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDGroupDetailController.h"
#import "DDGroupDetailView.h"
#import "SWRevealViewController.h"
#import "DDAppDelegate.h"

@interface DDGroupDetailController ()<DDGroupNewViewDelegate>
{
    DDGroupDetailView *_gNewView;
}

@end

@implementation DDGroupDetailController

@synthesize groupModel;

-(void)loadView
{
    [super loadView];
    
    _gNewView = [[DDGroupDetailView alloc] initWithFrame:CGRectZero];
    
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
