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

#import "DDGroupNewController.h"
#import "DDGroupDetailController.h"

@interface DDGroupController ()<DDGroupViewDelegate>
{
    DDGroupView *_groupView;
}

@end

@implementation DDGroupController

-(void)loadView
{
    [super loadView];
    
    _groupView = [[DDGroupView alloc] initWithFrame:CGRectZero];
    _groupView.delegate = self;
    
    self.view = _groupView;
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

#pragma mark - DDGroupViewDelegate

-(void)goToNewGroup
{
    DDGroupNewController *gnc = [DDGroupNewController new];
    [self presentViewController:gnc animated:YES completion:nil];
    
}

-(void)tableViewDidSelectWihData:(DDGroupModel *)data
{
    DDGroupDetailController *ddc = [DDGroupDetailController new];
    
    ddc.groupModel = data;
    
    [self.navigationController pushViewController:ddc animated:YES];
}

@end
