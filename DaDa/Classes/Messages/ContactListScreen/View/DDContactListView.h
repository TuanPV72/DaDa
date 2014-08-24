//
//  TMMessageView.h
//  MessageChat
//
//  Created by Tuan Pham on 6/4/14.
//  Copyright (c) 2014 Tuan Pham. All rights reserved.
//

@protocol DDContactListViewDeleage;
#import <UIKit/UIKit.h>

@interface DDContactListView : UIView<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,assign) id<DDContactListViewDeleage>delegate;

-(IBAction)doneClick:(id)sender;
@end
@protocol DDContactListViewDeleage <NSObject>

-(void)doneNewMessage;
@end