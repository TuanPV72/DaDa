//
//  DDGroupCell.h
//  DaDa
//
//  Created by MAC on 8/24/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DDGroupModel.h"

@interface DDGroupCell : UITableViewCell
{

    IBOutlet UIImageView *avatarGroup;
    IBOutlet UILabel *nameGroup;
    IBOutlet UILabel *timeCreate;
    
}

@property (nonatomic, strong) DDGroupModel *groupModel;

@end
