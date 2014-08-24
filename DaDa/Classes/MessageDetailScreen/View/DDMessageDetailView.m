//
//  DDHomeView.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDGroupDetailView.h"
#import "DDMessageUseCell.h"
#import "DDMessageMeCell.h"

@interface DDGroupDetailView()<UITableViewDataSource, UITableViewDelegate,UITextViewDelegate>
{
    IBOutlet UITableView *tblMessage;
    IBOutlet UILabel *title;
    IBOutlet UITextView *txtMessage;
    
    IBOutlet UIView *bottomView;
    
    NSMutableArray *arrayChat;

}

@end

@implementation DDGroupDetailView

@synthesize delegate;
@synthesize groupModel = _groupModel;


- (id)initWithFrame:(CGRect)frame
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"DDGroupDetailView" owner:self options:nil] objectAtIndex:0];
    if (self) {
        
        arrayChat = [[NSMutableArray alloc] init];
        
        [arrayChat addObject:@"0"];
        [arrayChat addObject:@"1"];
        [arrayChat addObject:@"0"];
        [arrayChat addObject:@"1"];
        [arrayChat addObject:@"0"];
        [arrayChat addObject:@"1"];
        [arrayChat addObject:@"0"];
        [arrayChat addObject:@"1"];
        
    }
    return self;
}

#pragma mark - BTN_ACTION


-(void)setGroupModel:(DDGroupModel *)groupModel
{
    title.text = groupModel.name;
}

-(IBAction)backPress:(id)sender;
{
    if (delegate && [delegate respondsToSelector:@selector(backToScreen)]) {
        [delegate backToScreen];
    }
}


#pragma mark - UITableViewDelegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return arrayChat.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 92;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    int type = [[arrayChat objectAtIndex:indexPath.row] intValue];
    if (type == 1) {
        
        static NSString *deque = @"DDMessageUseCell";
        DDMessageUseCell *cell = (DDMessageUseCell *)[tableView dequeueReusableCellWithIdentifier:deque];
        
        if (!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"DDMessageUseCell" owner:self options:nil] firstObject];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        //        cell.imgAvatar.image = [UIImage imageNamed:@"icon_avartar.gif"];
        cell.message.text = @"Hi John, How are you?";
        return cell;
        
        
    }else {
        
        static NSString *deque = @"DDMessageMeCell";
        DDMessageMeCell *cell = (DDMessageMeCell *)[tableView dequeueReusableCellWithIdentifier:deque];
        if (!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"DDMessageMeCell" owner:self options:nil] firstObject];
        }
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        //        cell.imgAvatar.image = [UIImage imageNamed:@"icon_avartar.gif"];
        cell.message.text = @"Hi Dan, I'm fine. And you?";
        
        return cell;
    }
    return nil;
    
}

#pragma mark - UITextFieldDelegate

-(void)textViewDidBeginEditing:(UITextView *)textView
{
    [self moveTextViewWithBool:YES];
}

-(void)textViewDidEndEditing:(UITextView *)textView
{
    [self moveTextViewWithBool:NO];
}
-(void)moveTextViewWithBool:(BOOL)isBool
{
    if (isBool) {
        
        bottomView.frame = CGRectMake(0, self.frame.size.height, bottomView.frame.size.width, bottomView.frame.size.height);
        
        [self sizeOfTextView:txtMessage.text];
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.28];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        
        bottomView.frame = CGRectMake(0, self.frame.size.height - 215-bottomView.frame.size.height, bottomView.frame.size.width, bottomView.frame.size.height);
        
        [UIView commitAnimations];
        
        tblMessage.frame = CGRectMake(tblMessage.frame.origin.x, tblMessage.frame.origin.y, tblMessage.frame.size.width, self.frame.size.height - bottomView.frame.origin.y-20);
        
    }else {
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.28];
        
        bottomView.frame = CGRectMake(0, self.frame.size.height - 44, bottomView.frame.size.width, 44);
        
        [UIView commitAnimations];
        
        tblMessage.frame = CGRectMake(tblMessage.frame.origin.x, tblMessage.frame.origin.y, tblMessage.frame.size.width, 454);
    }
}


-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    [self sizeOfTextView:textView.text];
    return YES;
}

-(void)sizeOfTextView:(NSString *)text
{
    CGSize textSize = [text sizeWithFont:txtMessage.font constrainedToSize:CGSizeMake(241, 1000) lineBreakMode:NSLineBreakByWordWrapping];
    
    float height = textSize.height - 17;
    
    if (height > 123) {
        height = 122;
    }
    if (height < 0) {
        height = 0;
    }
    
    CGRect viewRect = txtMessage.frame;
    viewRect.size.width = 320;
    viewRect.origin.x = 0;
    viewRect.origin.y = self.frame.size.height - 215 - height-44;
    viewRect.size.height = 44 + height;
    
    bottomView.frame = viewRect;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self endEditing:YES];
}

@end
