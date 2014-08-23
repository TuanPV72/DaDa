//
//  DDController.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDMessageController.h"
#import "DDMessageView.h"
//#import "SWRevealViewController.h"

@interface DDMessageController ()
{
    DDMessageView *_homeView;
}

@end

@implementation DDMessageController

-(void)loadView
{
    [super loadView];
    
    _homeView = [[DDMessageView alloc] initWithFrame:CGRectZero];
    
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
