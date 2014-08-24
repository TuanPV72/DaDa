//
//  DDHomeView.h
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DDGroupModel.h"

@protocol DDGroupViewDelegate;

@interface DDGroupView : UIView

@property (nonatomic, assign) id<DDGroupViewDelegate>delegate;

-(IBAction)newPress:(id)sender;
-(IBAction)editPress:(id)sender;

@end

@protocol DDGroupViewDelegate <NSObject>

-(void)goToNewGroup;
-(void)tableViewDidSelectWihData:(DDGroupModel *)data;

@end
