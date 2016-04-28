//
//  FGTabBarController.m
//  FGJIE
//
//  Created by chfg on 16/4/28.
//  Copyright © 2016年 chfg. All rights reserved.
//

#import "FGTabBarController.h"
#import "FGTabBar.h"
#import "FGNavigationController.h"
#import "FGEssenceViewController.h" // 精选控制器
#import "FGNewViewController.h" // 最新控制器
#import "FGFriendTrendsViewController.h" // 关注控制器
#import "FGMeViewController.h" // 我的控制器

@interface FGTabBarController ()

@end

@implementation FGTabBarController


+ (void)initialize
{
    UITabBarItem *item = [UITabBarItem appearance];
    
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateNormal];
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}  forState:UIControlStateSelected];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建自定义的tabBar
    FGTabBar *myTabBar = [[FGTabBar alloc] init];
    
    [self setValue:myTabBar forKey:@"tabBar"];
    
    
    // 添加子控制器
    [self addSubController];
    
}


- (void)addSubController
{
    // 精选控制器
    [self addChildVC:[[FGEssenceViewController alloc] init] title:@"精选" ItemImageName:@"tabBar_essence_icon" selectedImageName:@"tabBar_essence_click_icon"];
    
    // 最新控制器
    [self addChildVC:[[FGNewViewController alloc] init] title:@"最新" ItemImageName:@"tabBar_new_icon" selectedImageName:@"tabBar_new_click_icon"];
    
    // 关注控制器
    [self addChildVC:[[FGFriendTrendsViewController alloc] init] title:@"关注" ItemImageName:@"tabBar_friendTrends_icon" selectedImageName:@"tabBar_friendTrends_click_icon"];
    
    // 我的控制器
    [self addChildVC:[[FGMeViewController alloc] init] title:@"我" ItemImageName:@"tabBar_me_icon" selectedImageName:@"tabBar_me_click_icon"];
}



/**
 *  包装控制器，并添加到TabBarController 的ChildViewController中
 */
- (void)addChildVC:(UIViewController *)childVC title:(NSString *)title ItemImageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    FGNavigationController *nav = [[FGNavigationController alloc] initWithRootViewController:childVC];
    
    nav.tabBarItem.image = [UIImage imageNamed:imageName];
    nav.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    
    childVC.title = title;
    
    [self addChildViewController:nav];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
