//
//  DDMenuController.m
//  DaDa
//
//  Created by MAC on 8/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "DDContactController.h"
#import "DDContactView.h"
#import "DDLeftBarView.h"

@interface DDContactController ()
{
    DDContactView *_menuView;
}
@end

@implementation DDContactController

-(void)loadView
{
    [super loadView];
    
    _menuView = [[DDContactView alloc] initWithFrame:CGRectZero];
    
    self.view = _menuView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /*UIBarButtonItem *revealButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"reveal-icon.png"]
                                                                         style:UIBarButtonItemStyleBordered target:self action:@selector(revealToggle:)];
     
     */
    
   // self.navigationItem.leftBarButtonItem = revealButtonItem;
    
    DDLeftBarView *leftBar = [[DDLeftBarView alloc] initWithFrame:CGRectZero];
    [self.navigationController.navigationBar addSubview:leftBar];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
