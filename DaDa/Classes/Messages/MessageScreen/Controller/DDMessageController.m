//
//  DDController.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDMessageController.h"
#import "DDMessageView.h"
#import "SWRevealViewController.h"
#import "DDNewMessageController.h"
#import "DDMessageDetailController.h"


@interface DDMessageController ()<DDMessageViewDelegate>
{
    DDMessageView *_messView;
}

@end

@implementation DDMessageController

-(void)loadView
{
    [super loadView];
    
    _messView = [[DDMessageView alloc] initWithFrame:CGRectZero];
    
    _messView.delegate = self;
    self.view = _messView;
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - DDMessageViewDelegate

-(void)goToNewMessage
{
    DDNewMessageController *nc = [DDNewMessageController new];
    
    [self presentViewController:nc animated:YES completion:nil];
}

-(void)tableViewDidSelectWihData:(DDMessageModel *)data
{
    DDMessageDetailController *dc = [DDMessageDetailController new];
    
    [self.navigationController pushViewController:dc animated:YES];
}

@end
