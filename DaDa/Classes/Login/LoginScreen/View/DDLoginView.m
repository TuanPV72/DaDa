//
//  DDHomeView.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDLoginView.h"

@interface DDLoginView()
{
    IBOutlet UITextField *userName;
    IBOutlet UITextField *passWord;
    IBOutlet UIButton *btnLogin;
    IBOutlet UIButton *btnMore;
    IBOutlet UIButton *btnRegister;
}

@end

@implementation DDLoginView

@synthesize delegate = delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"DDLoginView" owner:self options:nil] objectAtIndex:0];
    if (self) {
    }
    return self;
}

#pragma mark - BTN Action

-(IBAction)loginPress:(id)sender
{
    //TODO: NOt check validate data
    
    
    if (delegate && [delegate respondsToSelector:@selector(loginAccountWithName:pass:)]) {
        
        [delegate loginAccountWithName:userName.text pass:passWord.text];
    }
}
-(IBAction)morePress:(id)sender
{
    if (delegate && [delegate respondsToSelector:@selector(loginWithMore)]) {
        [delegate loginWithMore];
    }
}
-(IBAction)registerPress:(id)sender
{
    if (delegate && [delegate respondsToSelector:@selector(goToRegister)]) {
        [delegate goToRegister];
    }
}


@end
