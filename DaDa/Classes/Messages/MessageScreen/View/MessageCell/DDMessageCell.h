//
//  DDGroupCell.h
//  DaDa
//
//  Created by MAC on 8/24/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DDMessageModel.h"

@interface DDMessageCell : UITableViewCell
{

    IBOutlet UIImageView *avatarGroup;
    IBOutlet UILabel *nameGroup;
    IBOutlet UILabel *descript;
    IBOutlet UILabel *timeCreate;
    
}

@property (nonatomic, strong) DDMessageModel *messModel;

@end
