//
//  DDHomeView.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDHomeView.h"
#import "DDGroupController.h"
#import "DDMessageController.h"

@implementation DDHomeView

- (id)initWithFrame:(CGRect)frame
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"DDHomeView" owner:self options:nil] objectAtIndex:0];
    if (self) {
        
        DDGroupController *gc = [DDGroupController new];
        gc.title = @"Group";
        
        DDMessageController *mc = [DDMessageController new];
        mc.title = @"Message";
        
        
        NSArray *viewControllers = @[gc, mc];
        MHTabBarController *tabBarController = [[MHTabBarController alloc] init];
        
        tabBarController.delegate = self;
        tabBarController.viewControllers = viewControllers;
        
        
        tabBarController.view.frame = CGRectMake(0, 0, 320, 568);
        
        [self addSubview:tabBarController.view];
    }
    return self;
}


- (BOOL)mh_tabBarController:(MHTabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController atIndex:(NSUInteger)index
{
	NSLog(@"mh_tabBarController %@ shouldSelectViewController %@ at index %u", tabBarController, viewController, index);
    
    
	return YES;
}

- (void)mh_tabBarController:(MHTabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController atIndex:(NSUInteger)index
{
	NSLog(@"mh_tabBarController %@ didSelectViewController %@ at index %u", tabBarController, viewController, index);
}


@end
