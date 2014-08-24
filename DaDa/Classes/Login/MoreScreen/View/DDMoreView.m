//
//  DDHomeView.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDMoreView.h"

@interface DDMoreView()
{
}

@end

@implementation DDMoreView

@synthesize delegate = delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"DDMoreView" owner:self options:nil] objectAtIndex:0];
    if (self) {
    }
    return self;
}

#pragma mark - BTN Action

-(IBAction)facebookPress:(id)sender
{
    if (delegate && [delegate respondsToSelector:@selector(facebookLogin)]) {
        [delegate facebookLogin];
    }
}
-(IBAction)googlePress:(id)sender
{
    if (delegate && [delegate respondsToSelector:@selector(googleLogin)]) {
        [delegate googleLogin];
    }
}
-(IBAction)twitterPress:(id)sender
{
    if (delegate && [delegate respondsToSelector:@selector(twitterLogin)]) {
        [delegate twitterLogin];
    }
}

-(IBAction)donePress:(id)sender
{
    if (delegate && [delegate respondsToSelector:@selector(doneLogin)]) {
        [delegate doneLogin];
    }
}


@end
