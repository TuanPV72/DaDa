//
//  DDHomeView.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDGroupView.h"
#import "MHTabBarController.h"
#import "DDGroupModel.h"
#import "DDGroupCell.h"


@interface DDGroupView()<UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *_arrContact;
    
    IBOutlet UITableView *_tblGroup;
    
    IBOutlet UIView *popView;
    IBOutlet UITextField *groupName;
    

}

@end

@implementation DDGroupView


- (id)initWithFrame:(CGRect)frame
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"DDGroupView" owner:self options:nil] objectAtIndex:0];
    if (self) {
        
        
        _arrContact = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            
            DDGroupModel *model = [[DDGroupModel alloc] init];
            model.name = @"Tinh Yeu";
            model.timeCreate = @"17:29 - 24/08/2014";
            model.urlAvatar = @"///abc";
            
            [_arrContact addObject:model];
        }
        
        popView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        popView.hidden = YES;
        
        [self addSubview:popView];
        
    }
    return self;
}

#pragma mark - BTN_ACTION

-(IBAction)newPress:(id)sender
{
    popView.hidden = NO;
}

-(IBAction)editPress:(id)sender
{
    
}

-(IBAction)closePopPress:(id)sender
{
    popView.hidden = YES;
}
-(IBAction)creatPress:(id)sender
{
    popView.hidden = YES;
    
    //__TODO: Creat New Group
}

#pragma mark - UITableViewDelegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arrContact.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DDGroupCell *cell = (DDGroupCell *)[tableView dequeueReusableCellWithIdentifier:@"DDGroupCell"];
    
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"DDGroupCell" owner:self options:nil] firstObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    [cell setGroupModel:[_arrContact objectAtIndex:indexPath.row]];
    
    return cell;
    
}


@end
