//
//  TMMessageView.h
//  MessageChat
//
//  Created by Tuan Pham on 6/4/14.
//  Copyright (c) 2014 Tuan Pham. All rights reserved.
//

@protocol DDNewMessageViewDeleage;
#import <UIKit/UIKit.h>

@interface DDNewMessageView : UIView<UITextFieldDelegate,UITextViewDelegate>

@property (nonatomic,assign) id<DDNewMessageViewDeleage>delegate;

-(IBAction)doneClick:(id)sender;
-(IBAction)addContact:(id)sender;
@end
@protocol DDNewMessageViewDeleage <NSObject>

-(void)doneNewMessage;
-(void)goToContact;
@end