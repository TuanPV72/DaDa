//
//  DDGroupCell.m
//  DaDa
//
//  Created by MAC on 8/24/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDGroupCell.h"

@implementation DDGroupCell
@synthesize groupModel = _groupModel;

- (void)awakeFromNib
{
    [DDUltility borderRadiusWithIMG:avatarGroup];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setGroupModel:(DDGroupModel *)groupModel
{
    nameGroup.text = groupModel.name;
    timeCreate.text = [NSString stringWithFormat:@"Ngày tạo: %@",groupModel.timeCreate];
    avatarGroup.image = [UIImage imageNamed:groupModel.urlAvatar];
}

@end
