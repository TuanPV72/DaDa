//
//  MMessageCell.h
//  Mtaxi
//
//  Created by MAC on 6/4/14.
//  Copyright (c) 2014 Pham Van Thinh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DDGroupMessageUseCell : UITableViewCell

@property (nonatomic,strong) IBOutlet UILabel *time;
@property (nonatomic,strong) IBOutlet UILabel *message;
@property (nonatomic,strong) IBOutlet UIImageView *imgBackground;
@property (nonatomic,strong) IBOutlet UIImageView *imgAvatar;
@property (nonatomic,strong) IBOutlet UILabel *userName;

@end
