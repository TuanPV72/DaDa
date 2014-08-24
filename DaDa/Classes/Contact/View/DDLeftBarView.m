//
//  DDLeftBarView.m
//  DaDa
//
//  Created by MAC on 8/21/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDLeftBarView.h"

@interface DDLeftBarView()

@end

@implementation DDLeftBarView

@synthesize avatarUser;
@synthesize nameUser;
@synthesize statusUser;

- (id)initWithFrame:(CGRect)frame
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"DDLeftBarView" owner:self options:nil] firstObject];
    if (self) {
        // Initialization code
        
        avatarUser.layer.cornerRadius = avatarUser.frame.size.height/2;
        [avatarUser.layer setMasksToBounds:YES];
    }
    return self;
}



-(IBAction)logoutClick:(id)sender
{
    //TODO: Logout Account
}
@end
