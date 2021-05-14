//
//  XTViewController.m
//  XTLogModule
//
//  Created by xietao3 on 03/20/2021.
//  Copyright (c) 2021 xietao3. All rights reserved.
//

#import "XTViewController.h"
#import <XTLogModuleFramework/XTLogModuleFramework.h>
//#import <XTLogModuleFramework/XTLogModuleFramework.h>
@interface XTViewController ()

@end

@implementation XTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [XTLogTool logString:@"123"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
