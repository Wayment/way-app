//
//  RootViewController.m
//  wayapp
//
//  Created by Wayment on 15/12/27.
//  Copyright © 2015年 wayment. All rights reserved.
//

#import "RootViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"

@interface RootViewController ()

@property (nonatomic, strong) FirstViewController *firstVc;
@property (nonatomic, strong) SecondViewController *secondVc;
@property (nonatomic, strong) ThirdViewController *thirdVc;
@property (nonatomic, strong) FourthViewController *fourthVc;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINavigationController *oneNavi   = [[UINavigationController alloc] initWithRootViewController:self.firstVc];
    UINavigationController *twoNavi   = [[UINavigationController alloc] initWithRootViewController:self.secondVc];
    UINavigationController *threeNavi = [[UINavigationController alloc] initWithRootViewController:self.thirdVc];
    UINavigationController *fourNavi  = [[UINavigationController alloc] initWithRootViewController:self.fourthVc];
    
    [self setViewControllers:@[oneNavi, twoNavi, threeNavi, fourNavi]];
    
}

#pragma mark - 创建视图
//第一个仕途
- (FirstViewController *)firstVc
{
    if (_firstVc == nil) {
        _firstVc = [[FirstViewController alloc] init];
        [_firstVc.tabBarItem setTitle:@"第一"];
        [_firstVc.tabBarItem setImage:[UIImage imageNamed:@"tabbar_one"]];
        [_firstVc.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_oneHL"]];
    }
    return _firstVc;
}

//第二个视图
- (SecondViewController *)secondVc
{
    if (_secondVc == nil) {
        _secondVc = [[SecondViewController alloc] init];
        [_secondVc.tabBarItem setTitle:@"第二"];
        [_secondVc.tabBarItem setImage:[UIImage imageNamed:@"tabbar_two"]];
        [_secondVc.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_twoHL"]];
    }
    return _secondVc;
}

//第三个视图
- (ThirdViewController *)thirdVc
{
    if (_thirdVc == nil) {
        _thirdVc = [[ThirdViewController alloc] init];
        [_thirdVc.tabBarItem setTitle:@"第三"];
        [_thirdVc.tabBarItem setImage:[UIImage imageNamed:@"tabbar_three"]];
        [_thirdVc.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_threeHL"]];
    }
    return _thirdVc;
}

//第四个视图
- (FourthViewController *)fourthVc
{
    if (_fourthVc == nil) {
        _fourthVc = [[FourthViewController alloc] init];
        [_fourthVc.tabBarItem setTitle:@"第四"];
        [_fourthVc.tabBarItem setImage:[UIImage imageNamed:@"tabbar_four"]];
        [_fourthVc.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_fourHL"]];
    }
    return _fourthVc;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
