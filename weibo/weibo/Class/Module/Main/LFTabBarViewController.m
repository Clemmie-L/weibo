//
//  LFTabBarViewController.m
//  weibo
//
//  Created by 刘健 on 16/3/26.
//  Copyright © 2016年 Clemmie. All rights reserved.
//

#import "LFTabBarViewController.h"
#import "LFHomeViewController.h"
#import "LFDiscoverViewController.h"
#import "LFMessageViewController.h"
#import "LFProfileViewController.h"
#import "LFTabBarView.h"

@interface LFTabBarViewController ()

@end

@implementation LFTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //使用自定义的tabBar
    LFTabBarView * tabBarView = [[LFTabBarView alloc]init];
    //只读，只能用KVC
    [self setValue:tabBarView forKey:@"tabBar"];
    
    //首页
    LFHomeViewController * homeVC = [[LFHomeViewController alloc]init];
    [self addChildViewController:homeVC andimageName:@"tabbar_home" title:@"首页"];
    //信息
    LFMessageViewController * messageVC = [[LFMessageViewController alloc]init];
    [self addChildViewController:messageVC andimageName:@"tabbar_message_center" title:@"信息"];
    LFDiscoverViewController * discoverVC = [[LFDiscoverViewController alloc]init];
    [self addChildViewController:discoverVC andimageName:@"tabbar_discover" title:@"发现"];
    LFProfileViewController *profileVC = [[LFProfileViewController alloc]init];
    [self addChildViewController:profileVC andimageName:@"tabbar_profile" title:@"我"];
}



- (void)addChildViewController:(UIViewController *)VC andimageName:(NSString *)imageName title:(NSString *)title {
    
    VC.title = title;
    NSDictionary * dict = @{
                            NSForegroundColorAttributeName:[UIColor orangeColor],
      
                            };
    
    VC.tabBarItem.image = [UIImage imageNamed:imageName];
    
    
    NSString * appendImageName = [NSString stringWithFormat:@"%@_highlighted",imageName];
    UIImage * image = [UIImage imageNamed:appendImageName];
    //渲染图片，始终绘制图片原始状态
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    VC.tabBarItem.selectedImage = image;
    
    
    [VC.tabBarItem setTitleTextAttributes:dict forState:UIControlStateNormal];
    
    [self addChildViewController:[[UINavigationController alloc]initWithRootViewController:VC]];
}






@end
