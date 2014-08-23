//
//  DDController.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDLoginController.h"
#import "DDLoginView.h"


//___SWRevealView
#import "SWRevealViewController.h"
#import "DDContactController.h"
//___MHTabbar

#import "MHTabBarController.h"

#import "DDGroupController.h"
#import "DDMessageController.h"
#import "DDSettingController.h"
#import "DDFriendController.h"

#import "DDAppDelegate.h"

@interface DDLoginController ()<DDLoginViewDelegate,MHTabBarControllerDelegate,SWRevealViewControllerDelegate>
{
    DDLoginView *_loginView;
    SWRevealViewController *mainRevealController;
    
}

@end

@implementation DDLoginController

-(void)loadView
{
    [super loadView];
    
    _loginView = [[DDLoginView alloc] initWithFrame:CGRectZero];
    _loginView.delegate = self;
    
    
    self.view = _loginView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}


#pragma mark - DDLoginViewDelegate

-(void)loginAccountWithName:(NSString *)name pass:(NSString *)pass
{
    //TODO: Send Login To server
    
    
    //__Login Success
    
    DDContactController *cc = [[DDContactController alloc] init];
    
    DDGroupController *gc = [DDGroupController new];
    gc.title = @"Group";
    
    DDMessageController *mc = [DDMessageController new];
    mc.title = @"Message";
    
    DDFriendController *fc = [DDFriendController new];
    fc.title = @"Friends";
    
    DDSettingController *sc = [DDSettingController new];
    sc.title = @"Settings";
    
    
    
    NSArray *viewControllers = @[gc, mc, fc, sc];
    MHTabBarController *tabBarController = [[MHTabBarController alloc] init];
    
    tabBarController.delegate = self;
    tabBarController.viewControllers = viewControllers;
    
    
    
    
    UIButton *btnMenu = [UIButton buttonWithType:UIButtonTypeSystem];
    
    btnMenu.frame = CGRectMake(15, 33, 22, 17);
//    btnMenu.backgroundColor = [UIColor redColor];
    
    [btnMenu setBackgroundImage:[UIImage imageNamed:IMG_MENU] forState:UIControlStateNormal];
    
    [btnMenu addTarget:self action:@selector(menuPress:) forControlEvents:UIControlEventTouchUpInside];
    
    [tabBarController.view addSubview:btnMenu];
    
    
    
    UINavigationController *frontNavigationController = [[UINavigationController alloc] initWithRootViewController:tabBarController];
    
    frontNavigationController.navigationBarHidden = YES;
    
    UINavigationController *rearNavigationController = [[UINavigationController alloc] initWithRootViewController:cc];
    
    mainRevealController = [[SWRevealViewController alloc]
                                                    initWithRearViewController:rearNavigationController frontViewController:frontNavigationController];
    
    mainRevealController.delegate = self;
    
    
    
    [gc.view addGestureRecognizer:mainRevealController.panGestureRecognizer];
    
    
    [self.navigationController pushViewController:mainRevealController animated:YES];
    
    
}

-(IBAction)menuPress:(id)sender
{
    [mainRevealController revealToggleAnimated:YES];
}

#pragma mark - SWRevealDelegate

- (NSString*)stringFromFrontViewPosition:(FrontViewPosition)position
{
    NSString *str = nil;
    if ( position == FrontViewPositionLeftSideMostRemoved ) str = @"FrontViewPositionLeftSideMostRemoved";
    if ( position == FrontViewPositionLeftSideMost) str = @"FrontViewPositionLeftSideMost";
    if ( position == FrontViewPositionLeftSide) str = @"FrontViewPositionLeftSide";
    if ( position == FrontViewPositionLeft ) str = @"FrontViewPositionLeft";
    if ( position == FrontViewPositionRight ) str = @"FrontViewPositionRight";
    if ( position == FrontViewPositionRightMost ) str = @"FrontViewPositionRightMost";
    if ( position == FrontViewPositionRightMostRemoved ) str = @"FrontViewPositionRightMostRemoved";
    return str;
}


- (void)revealController:(SWRevealViewController *)revealController willMoveToPosition:(FrontViewPosition)position
{
    NSLog( @"%@: %@", NSStringFromSelector(_cmd), [self stringFromFrontViewPosition:position]);
}

- (void)revealController:(SWRevealViewController *)revealController didMoveToPosition:(FrontViewPosition)position
{
    NSLog( @"%@: %@", NSStringFromSelector(_cmd), [self stringFromFrontViewPosition:position]);
}

- (void)revealController:(SWRevealViewController *)revealController animateToPosition:(FrontViewPosition)position
{
    NSLog( @"%@: %@", NSStringFromSelector(_cmd), [self stringFromFrontViewPosition:position]);
}

- (void)revealControllerPanGestureBegan:(SWRevealViewController *)revealController;
{
    NSLog( @"%@", NSStringFromSelector(_cmd) );
}

- (void)revealControllerPanGestureEnded:(SWRevealViewController *)revealController;
{
    NSLog( @"%@", NSStringFromSelector(_cmd) );
}

- (void)revealController:(SWRevealViewController *)revealController panGestureBeganFromLocation:(CGFloat)location progress:(CGFloat)progress
{
    NSLog( @"%@: %f, %f", NSStringFromSelector(_cmd), location, progress);
}

- (void)revealController:(SWRevealViewController *)revealController panGestureMovedToLocation:(CGFloat)location progress:(CGFloat)progress
{
    NSLog( @"%@: %f, %f", NSStringFromSelector(_cmd), location, progress);
}

- (void)revealController:(SWRevealViewController *)revealController panGestureEndedToLocation:(CGFloat)location progress:(CGFloat)progress
{
    NSLog( @"%@: %f, %f", NSStringFromSelector(_cmd), location, progress);
}


@end
