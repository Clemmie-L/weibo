//
//  AppDelegate.m
//  weibo
//
//  Created by 刘健 on 16/3/26.
//  Copyright © 2016年 Clemmie. All rights reserved.
//

#import "AppDelegate.h"
#import "LFTabBarViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    LFTabBarViewController* tabBarView = [[LFTabBarViewController alloc]init];
    
    self.window.rootViewController = tabBarView;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}



@end
