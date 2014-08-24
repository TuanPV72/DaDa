//
//  TMMessageView.h
//  MessageChat
//
//  Created by Tuan Pham on 6/4/14.
//  Copyright (c) 2014 Tuan Pham. All rights reserved.
//

@protocol TMContactListViewDeleage;
#import <UIKit/UIKit.h>

@interface TMContactListView : UIView<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,assign) id<TMContactListViewDeleage>delegate;

-(IBAction)doneClick:(id)sender;
@end
@protocol TMContactListViewDeleage <NSObject>

-(void)doneNewMessage;
@end