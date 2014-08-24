//
//  DDMenuCell.h
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DDContactModel.h"

@interface DDContactCell : UITableViewCell
{
    IBOutlet UILabel *_userName;
    IBOutlet UILabel *_userStatus;
    
    IBOutlet UIImageView *_imgAvatar;
    IBOutlet UIImageView *_imgStatus;
}

@property(nonatomic,strong) DDContactModel *modelCell;
@end
