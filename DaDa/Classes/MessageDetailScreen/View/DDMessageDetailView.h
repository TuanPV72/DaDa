//
//  DDHomeView.h
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DDGroupModel.h"

@protocol DDGroupNewViewDelegate;

@interface DDGroupDetailView : UIView

@property (nonatomic, assign) id<DDGroupNewViewDelegate>delegate;
@property (nonatomic, strong) DDGroupModel *groupModel;


-(IBAction)backPress:(id)sender;
@end

@protocol DDGroupNewViewDelegate <NSObject>

-(void)backToScreen;

@end