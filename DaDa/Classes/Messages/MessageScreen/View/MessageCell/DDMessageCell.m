//
//  DDGroupCell.m
//  DaDa
//
//  Created by MAC on 8/24/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDMessageCell.h"

@implementation DDMessageCell
@synthesize messModel = _messModel;

- (void)awakeFromNib
{
    [DDUltility borderRadiusWithIMG:avatarGroup];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setMessModel:(DDMessageModel *)messModel
{
    nameGroup.text = messModel.name;
    timeCreate.text = messModel.timeCreate;
    descript.text = messModel.descript;
    
    avatarGroup.image = [UIImage imageNamed:messModel.urlAvatar];
}

@end
