//
//  DDLeftBarView.h
//  DaDa
//
//  Created by MAC on 8/21/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DDLeftBarView : UIView


@property (nonatomic, strong) IBOutlet UIImageView *avatarUser;
@property (nonatomic, strong) IBOutlet UILabel *nameUser;
@property (nonatomic, strong) IBOutlet UILabel *statusUser;

-(IBAction)logoutClick:(id)sender;

@end
