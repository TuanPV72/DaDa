//
//  DDGroupModel.m
//  DaDa
//
//  Created by MAC on 8/24/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDGroupModel.h"

@implementation DDGroupModel
@synthesize name;
@synthesize timeCreate;
@synthesize urlAvatar;

-(id)init
{
    self = [super init];
    if (self) {
        name = @"";
        timeCreate = @"";
        urlAvatar = @"";
        
    }
    
    return self;
}


@end
