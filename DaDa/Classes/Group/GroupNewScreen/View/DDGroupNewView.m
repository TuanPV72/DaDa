//
//  DDHomeView.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDGroupNewView.h"


@interface DDGroupNewView()
{
    IBOutlet UITextField *groupName;
    

}

@end

@implementation DDGroupNewView

@synthesize delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"DDGroupNewView" owner:self options:nil] objectAtIndex:0];
    if (self) {
        
    }
    return self;
}

#pragma mark - BTN_ACTION



-(IBAction)closePopPress:(id)sender
{
    if (delegate && [delegate respondsToSelector:@selector(closePopup)]) {
        [delegate closePopup];
    }
}
-(IBAction)creatPress:(id)sender
{
    if (delegate && [delegate respondsToSelector:@selector(goToCreatNew)]) {
        [delegate goToCreatNew];
    }
}


@end
