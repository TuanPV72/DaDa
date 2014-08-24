//
//  DDController.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDMoreController.h"
#import "DDMoreView.h"


@interface DDMoreController ()<DDMoreViewDelegate>
{
    DDMoreView *_moreView;
    
}

@end

@implementation DDMoreController

-(void)loadView
{
    [super loadView];
    
    _moreView = [[DDMoreView alloc] initWithFrame:CGRectZero];
    _moreView.delegate = self;
    
    
    self.view = _moreView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}




#pragma mark - DDMoreViewDelegate

-(void)facebookLogin
{
    //__TODO
}

-(void)googleLogin
{
    //__TODO
}

-(void)twitterLogin
{
    //__TODO
}

-(void)doneLogin
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
