//
//  FirstViewController.m
//  wayapp
//
//  Created by Wayment on 15/12/27.
//  Copyright © 2015年 wayment. All rights reserved.
//

#import "FirstViewController.h"
#import "FirstNextViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    self.navigationItem.title = @"One";
    
    //添加导航按钮
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"next" style:UIBarButtonItemStylePlain target:self action:@selector(nextView)];
    
    self.navigationItem.rightBarButtonItem = item;
}

- (void)nextView
{
    FirstNextViewController *nextVc = [[FirstNextViewController alloc] init];
    [self.navigationController pushViewController:nextVc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
