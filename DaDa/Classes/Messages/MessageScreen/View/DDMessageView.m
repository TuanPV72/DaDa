//
//  DDHomeView.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDMessageView.h"
#import "MHTabBarController.h"
#import "DDMessageCell.h"

@interface DDMessageView()<UITableViewDataSource, UITableViewDelegate, UIAlertViewDelegate>
{
    NSMutableArray *_arrMessage;
    
    IBOutlet UITableView *tblMessage;
    IBOutlet UIButton *btnEdit;
    
    NSInteger _currentSelect;
}

@end

@implementation DDMessageView
@synthesize delegate = delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"DDMessageView" owner:self options:nil] objectAtIndex:0];
    if (self) {
        
        
        _arrMessage = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            
            DDMessageModel *model = [[DDMessageModel alloc] init];
            model.name = @"Tuan Pham";
            model.timeCreate = @"24/08/2014";
            model.urlAvatar = @"///abc";
            model.descript = @"This message is test";
            
            [_arrMessage addObject:model];
        }
        
    }
    return self;
}
#pragma mark - BTN_Action

-(IBAction)newPress:(id)sender
{
    if (delegate && [delegate respondsToSelector:@selector(goToNewMessage)]) {
        [delegate goToNewMessage];
    }
}
-(IBAction)editPress:(id)sender
{
    //__TODO: Edit Message
    
    
    //[tblMessage setEditing:YES animated:YES];
    
    if (![tblMessage isEditing]) {
        [tblMessage setEditing:YES animated:YES];
        [btnEdit setTitle:@"Huỷ" forState:UIControlStateNormal];
    }else {
        [tblMessage setEditing:NO animated:YES];
        [btnEdit setTitle:@"Thay đổi" forState:UIControlStateNormal];
    }
    
}

#pragma mark - UITableViewDelegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arrMessage.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DDMessageCell *cell = (DDMessageCell *)[tableView dequeueReusableCellWithIdentifier:@"DDMessageCell"];
    
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"DDMessageCell" owner:self options:nil] firstObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    [cell setMessModel:[_arrMessage objectAtIndex:indexPath.row]];
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (delegate && [delegate respondsToSelector:@selector(tableViewDidSelectWihData:)]) {
        [delegate tableViewDidSelectWihData:[_arrMessage objectAtIndex:indexPath.row]];
    }
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    _currentSelect = indexPath.row;
    
    [[[UIAlertView alloc] initWithTitle:@"Thông báo" message:@"Bạn có muốn xoá tin nhắn này?" delegate:self cancelButtonTitle:@"Đồng ý" otherButtonTitles:@"Huỷ", nil] show];
    
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0) {
        
        [_arrMessage removeObjectAtIndex:_currentSelect];
        [tblMessage reloadData];
        
    }
}

@end
