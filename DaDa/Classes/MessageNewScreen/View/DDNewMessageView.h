//
//  TMMessageView.h
//  MessageChat
//
//  Created by Tuan Pham on 6/4/14.
//  Copyright (c) 2014 Tuan Pham. All rights reserved.
//

@protocol TMNewMessageViewDeleage;
#import <UIKit/UIKit.h>

@interface TMNewMessageView : UIView<UITextFieldDelegate,UITextViewDelegate>

@property (nonatomic,assign) id<TMNewMessageViewDeleage>delegate;

-(IBAction)doneClick:(id)sender;
-(IBAction)addContact:(id)sender;
@end
@protocol TMNewMessageViewDeleage <NSObject>

-(void)doneNewMessage;
-(void)goToContact;
@end