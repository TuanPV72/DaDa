//
//  MMessageCell.m
//  Mtaxi
//
//  Created by MAC on 6/4/14.
//  Copyright (c) 2014 Pham Van Thinh. All rights reserved.
//

#import "TMMessageMeCell.h"

@implementation TMMessageMeCell
@synthesize time;
@synthesize message;
@synthesize imgBackground;
@synthesize imgAvatar;

- (void)awakeFromNib
{
    self.backgroundColor = [UIColor colorWithRed:102/255. green:211/255. blue:221/255. alpha:1.0];
    
    CALayer *layerImg = self.imgAvatar.layer;
    layerImg.cornerRadius = self.imgAvatar.frame.size.height/2;
    layerImg.borderWidth = 1.0;
    layerImg.borderColor = [[UIColor whiteColor] CGColor];
    [layerImg setMasksToBounds:YES];
    
    self.imgBackground.layer.cornerRadius = 3;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
