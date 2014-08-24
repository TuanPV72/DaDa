//
//  DDHomeView.h
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DDMessageModel.h"

@protocol DDMessageViewDelegate;

@interface DDMessageView : UIView

@property (nonatomic,assign) id<DDMessageViewDelegate>delegate;

-(IBAction)newPress:(id)sender;
-(IBAction)editPress:(id)sender;

@end

@protocol DDMessageViewDelegate <NSObject>

-(void)goToNewMessage;

-(void)tableViewDidSelectWihData:(DDMessageModel *)data;

@end