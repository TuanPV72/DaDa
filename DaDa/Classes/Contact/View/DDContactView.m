//
//  DDMenuView.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDContactView.h"
#import "DDContactCell.h"
#import "DDContactModel.h"

@interface DDContactView ()<UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *_tblMenu;
    IBOutlet UIView *_bottomView;
    IBOutlet UIImageView *_imgAvatar;
    IBOutlet UILabel *_lbName;
    IBOutlet UILabel *_lbStatus;
    
    NSMutableArray *_arrContact;
}
@end

@implementation DDContactView

- (id)initWithFrame:(CGRect)frame
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"DDContactView" owner:self options:nil] objectAtIndex:0];
    if (self) {
        
        
        //[DDUltility borderRadiusWithIMG:_imgAvatar];
        
        _imgAvatar.backgroundColor = [UIColor redColor];
        
        _arrContact = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            
            DDContactModel *model = [[DDContactModel alloc] init];
            model.name = @"Tuan Pham";
            model.status = @"Khong co gi la k the";
            model.isStatus = YES;
            
            [_arrContact addObject:model];
        }
        
    }
    return self;
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
    
    DDContactCell *cell = (DDContactCell *)[tableView dequeueReusableCellWithIdentifier:@"DDContactCell"];
    
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"DDContactCell" owner:self options:nil] firstObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    [cell setModelCell:[_arrContact objectAtIndex:indexPath.row]];
    
    return cell;
    
}



@end
