//
//  AppDelegate.m
//  导航控制器基础
//
//  Created by 张立远 on 2020/7/14.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "AppDelegate.h"
#import "VCRoot.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //创建一个根视图控制器
    VCRoot* root = [[VCRoot alloc] init];
    //创建导航栏控制器
    //导航控制器主要用来管理多个视图控制器的切换
    //层级的方式来管理多个视图控制器
    //创建控制器时，一定要有一个根视图控制器
    //参数一：就是作为调航控制器的根视图控制器
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:root];
    
    //将window的根视图设置为导航控制器
    self.window.rootViewController = nav;
    
    [self.window makeKeyAndVisible];
    
    // Override point for customization after application launch.
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
