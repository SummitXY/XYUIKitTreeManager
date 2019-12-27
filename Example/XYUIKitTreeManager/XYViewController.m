//
//  XYViewController.m
//  XYUIKitTreeManager
//
//  Created by quxiangyu on 12/27/2019.
//  Copyright (c) 2019 quxiangyu. All rights reserved.
//

#import "XYViewController.h"
#import "XYUIKitTreeManager.h"

@interface XYViewController ()

@end

@implementation XYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"main window %@",[XYUIKitTreeManager mainWindow]);
    NSLog(@"is pad :%ld",(long)[XYUIKitTreeManager _isPadDevice]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
