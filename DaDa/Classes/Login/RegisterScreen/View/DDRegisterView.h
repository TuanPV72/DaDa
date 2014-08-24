//
//  DDHomeView.h
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//



#import <UIKit/UIKit.h>

@protocol DDRegisterViewDelegate;


@interface DDRegisterView : UIView

@property (nonatomic,assign) id<DDRegisterViewDelegate> delegate;

-(IBAction)registerPress:(id)sender;
-(IBAction)donePress:(id)sender;

@end


@protocol DDRegisterViewDelegate <NSObject>

-(void) registerAccountWithValue:(NSDictionary *)dict;
-(void) doneGegister;

@end