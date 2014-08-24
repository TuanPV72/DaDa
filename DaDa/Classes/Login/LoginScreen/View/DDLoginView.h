//
//  DDHomeView.h
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//



#import <UIKit/UIKit.h>

@protocol DDLoginViewDelegate;


@interface DDLoginView : UIView

@property (nonatomic,assign) id<DDLoginViewDelegate> delegate;

-(IBAction)loginPress:(id)sender;
-(IBAction)morePress:(id)sender;
-(IBAction)registerPress:(id)sender;


@end


@protocol DDLoginViewDelegate <NSObject>

-(void) loginAccountWithName:(NSString *)name pass:(NSString *)pass;
-(void) loginWithMore;
-(void) goToRegister;

@end