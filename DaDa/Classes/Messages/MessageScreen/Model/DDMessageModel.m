//
//  DDMessageModel.m
//  DaDa
//
//  Created by MAC on 8/24/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDMessageModel.h"

@implementation DDMessageModel

@synthesize name;
@synthesize descript;
@synthesize timeCreate;
@synthesize urlAvatar;

-(id)init
{
    self = [super init];
    if (self) {
        name = @"";
        descript = @"";
        timeCreate = @"";
        urlAvatar = @"";
        
    }
    
    return self;
}


@end
