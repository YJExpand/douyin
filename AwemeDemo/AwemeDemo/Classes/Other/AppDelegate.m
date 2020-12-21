//
//  AppDelegate.m
//  AwemeDemo
//
//  Created by YJExpand on 2020/12/21.
//

#import "AppDelegate.h"
#import "AWMainController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    AWMainController *mainController = [[AWMainController alloc] init];
    self.window.rootViewController = mainController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
