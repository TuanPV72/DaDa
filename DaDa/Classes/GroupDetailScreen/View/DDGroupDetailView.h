//
//  DDHomeView.h
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DDGroupNewViewDelegate;

@interface DDGroupNewView : UIView

@property (nonatomic, assign) id<DDGroupNewViewDelegate>delegate;

-(IBAction)closePopPress:(id)sender;
-(IBAction)creatPress:(id)sender;
@end

@protocol DDGroupNewViewDelegate <NSObject>

-(void)closePopup;
-(void)goToCreatNew;

@end