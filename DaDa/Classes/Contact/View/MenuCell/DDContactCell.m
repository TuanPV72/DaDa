//
//  DDMenuCell.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDContactCell.h"


@implementation DDContactCell

@synthesize modelCell = _modelCell;

- (void)awakeFromNib
{
    // Initialization code
    
    [DDUltility borderRadiusWithIMG:_imgAvatar];
    [DDUltility borderRadiusWithIMG:_imgStatus];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setModelCell:(DDContactModel *)modelCell
{
    _userName.text = modelCell.name;
    _userStatus.text = modelCell.status;
    
    //__TODO: Check Status And Avatar
    
    if (modelCell.isStatus) {
        
        _imgStatus.backgroundColor = [UIColor greenColor];
    }else {
        _imgStatus.backgroundColor = [UIColor redColor];
    }
    
    _imgAvatar.backgroundColor = [UIColor redColor];
    
}

@end
