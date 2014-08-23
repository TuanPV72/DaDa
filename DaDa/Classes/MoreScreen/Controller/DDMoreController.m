//
//  DDController.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDRegisterController.h"
#import "DDRegisterView.h"


@interface DDRegisterController ()<DDRegisterViewDelegate>
{
    DDRegisterView *_regisView;
    
}

@end

@implementation DDRegisterController

-(void)loadView
{
    [super loadView];
    
    _regisView = [[DDRegisterView alloc] initWithFrame:CGRectZero];
    _regisView.delegate = self;
    
    
    self.view = _regisView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}




#pragma mark - DDRegisterViewDelegate

-(void)registerAccountWithValue:(NSDictionary *)dict
{
    //__TODO: Action for register
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)doneGegister
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
