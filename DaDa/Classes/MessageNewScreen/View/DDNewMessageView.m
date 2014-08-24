//
//  TMMessageView.m
//  MessageChat
//
//  Created by Tuan Pham on 6/4/14.
//  Copyright (c) 2014 Tuan Pham. All rights reserved.
//

#import "TMNewMessageView.h"

@implementation TMNewMessageView
{
    IBOutlet UITextField *txtTo;
    IBOutlet UITextView *txtMessage;
    IBOutlet UIImageView *bgMessage;
    IBOutlet UIButton *btnSubmit;
    IBOutlet UIImageView *bgTo;
}
@synthesize delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"TMNewMessageView" owner:self options:nil] firstObject];
    if (self) {
    
        bgMessage.layer.borderWidth = 1.0;
        bgMessage.layer.cornerRadius = 10.0;
        bgMessage.layer.borderColor = [[UIColor whiteColor] CGColor];
        
        txtTo.layer.borderWidth = 1.0;
        txtTo.layer.cornerRadius = 10.0;
        txtTo.layer.borderColor = [[UIColor colorWithRed:224/255. green:224/255. blue:224/255. alpha:1.0] CGColor];
        [txtTo becomeFirstResponder];
        
        [txtTo setLeftView:[[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 30)]];
        [txtTo setLeftViewMode:UITextFieldViewModeAlways];
        
        txtMessage.layer.borderWidth = 1.0;
        txtMessage.layer.cornerRadius = 10.0;
        txtMessage.layer.borderColor = [[UIColor colorWithRed:224/255. green:224/255. blue:224/255. alpha:1.0] CGColor];
        
//        bgTo.layer.borderWidth = 1.0;
        bgTo.layer.cornerRadius = 10.0;
        bgTo.backgroundColor = [UIColor whiteColor];
//        bgTo.layer.borderColor = [[UIColor colorWithRed:224/255. green:224/255. blue:224/255. alpha:1.0] CGColor];
        
        self.backgroundColor = [UIColor colorWithRed:242/255. green:240/255. blue:240/255. alpha:1.0];
        
        txtMessage.text = @"Add your message here...";
        txtMessage.textColor = [UIColor colorWithRed:200/255. green:200/255. blue:205/255. alpha:1.0];
        
    }
    return self;
}

-(IBAction)doneClick:(id)sender
{
    [self endEditing:YES];
    if (self.delegate && [self.delegate respondsToSelector:@selector(doneNewMessage)]) {
        [self.delegate doneNewMessage];
    }
}

-(IBAction)addContact:(id)sender
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(goToContact)]) {
        [self.delegate goToContact];
    }
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self endEditing:YES];
}


#pragma mark-TextViewDelegate

-(BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@"Add your message here..."]) {
        textView.text = @"";
        textView.textColor = [UIColor blackColor];
    }
    return YES;
}

-(BOOL)textViewShouldEndEditing:(UITextView *)textView
{
    if (textView.text.length == 0) {
        textView.text = @"Add your message here...";
        textView.textColor = [UIColor colorWithRed:200/255. green:200/255. blue:205/255. alpha:1.0];
    }
    return YES;
}

@end
