//
//  DDHomeView.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDRegisterView.h"

@interface DDRegisterView()
{
    IBOutlet UITextField *name;
    IBOutlet UITextField *email;
    IBOutlet UITextField *pass;
    IBOutlet UITextField *birth;
    IBOutlet UITextField *gender;
    
    
    IBOutlet UIButton *btnRegister;
}

@end

@implementation DDRegisterView

@synthesize delegate = delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"DDRegisterView" owner:self options:nil] objectAtIndex:0];
    if (self) {
    }
    return self;
}

#pragma mark - BTN Action

-(IBAction)registerPress:(id)sender
{
    //TODO: NOt check validate data
    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    
    [dict setObject:name.text forKey:RES_NAME];
    [dict setObject:email.text forKey:RES_EMAIL];
    [dict setObject:pass.text forKey:RES_PASS];
    [dict setObject:birth.text forKey:RES_BIRTH];
    [dict setObject:gender.text forKey:RES_GEN];
    
    
    if (delegate && [delegate respondsToSelector:@selector(registerAccountWithValue:)]) {
        
        [delegate registerAccountWithValue:dict];
    }
}

-(IBAction)donePress:(id)sender
{
    if (delegate && [delegate respondsToSelector:@selector(doneGegister)])
    {
        
        [self endEditing:YES];
        [delegate doneGegister];
    }
}

@end
