//
//  TMMessageController.m
//  MessageChat
//
//  Created by Tuan Pham on 6/4/14.
//  Copyright (c) 2014 Tuan Pham. All rights reserved.
//

#import "TMNewMessageController.h"
#import "TMNewMessageView.h"
#import "SWRevealViewController.h"
#import "TMNewMessageController.h"
#import "TMContactListController.h"

@interface TMNewMessageController ()<TMNewMessageViewDeleage>
{
    TMNewMessageView *_messageView;
}
@end

@implementation TMNewMessageController

-(void)loadView
{
    [super loadView];
    
    _messageView = [[TMNewMessageView alloc] initWithFrame:CGRectZero];
    _messageView.delegate = self;
    
    self.view = _messageView;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.title = @"Message";
    
    UIButton *btnLeft = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnLeft.frame = CGRectMake(0, 0, 50, 26);
    [btnLeft setBackgroundColor:[UIColor greenColor]];
    [btnLeft setTitle:@"List" forState:UIControlStateNormal];
    [btnLeft addTarget:self action:@selector(menuClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithCustomView:btnLeft];
    self.revealViewController.navigationItem.leftBarButtonItem = leftBtn;
    
    
    UIButton *btnRight = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnRight.frame = CGRectMake(0, 0, 100, 26);
    [btnRight setBackgroundColor:[UIColor greenColor]];
    [btnRight setTitle:@"+ New" forState:UIControlStateNormal];
    [btnRight addTarget:self action:@selector(addNessageClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithCustomView:btnRight];
    self.revealViewController.navigationItem.rightBarButtonItem = rightBtn;
    
    
    SWRevealViewController *revealController = [self revealViewController];
    if (revealController)
    {
        [self.view addGestureRecognizer:revealController.panGestureRecognizer];
        [self.view addGestureRecognizer:revealController.tapGestureRecognizer];
    }
}

-(IBAction)menuClick:(id)sender
{
    [self.revealViewController revealToggleAnimated:YES];
}

-(IBAction)addNessageClick:(id)sender
{
    TMNewMessageController *nc = [[TMNewMessageController alloc] init];
    [self presentViewController:nc animated:YES completion:nil];
}

#pragma mark - TMContactListViewDeleage

-(void)doneNewMessage
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)goToContact
{

    TMContactListController *cl = [[TMContactListController alloc] init];
    [self presentViewController:cl animated:YES completion:nil];
}
@end
