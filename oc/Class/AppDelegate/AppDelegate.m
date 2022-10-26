//
//  AppDelegate.m
//  oc
//
//  Created by New on 2022/10/17.
//

#import "AppDelegate.h"
#import "GCDViewController.h"
#import "PersonViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.window setBackgroundColor:[UIColor whiteColor]];
    
    PersonViewController *vc = [[PersonViewController alloc] init];

    self.window.rootViewController = vc;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
