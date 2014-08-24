//
//  DDHomeView.h
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//



#import <UIKit/UIKit.h>

@protocol DDMoreViewDelegate;


@interface DDMoreView : UIView

@property (nonatomic,assign) id<DDMoreViewDelegate> delegate;

-(IBAction)facebookPress:(id)sender;
-(IBAction)googlePress:(id)sender;
-(IBAction)twitterPress:(id)sender;
-(IBAction)donePress:(id)sender;

@end


@protocol DDMoreViewDelegate <NSObject>

-(void)facebookLogin;
-(void)googleLogin;
-(void)twitterLogin;
-(void)doneLogin;

@end