//
//  AppDelegate.m
//  copyDemo
//
//  Created by KFW on 2019/4/19.
//  Copyright © 2019 KFW. All rights reserved.
//

#import "AppDelegate.h"
#import "YYModel/YYModel.h"
#import "Person.h"
#import "Dog.h"

#import "NSObject+FWCopying.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    Dog *d = Dog.new;
    d.name = @"d";
    d.age = 1;
    
    Person *p = Person.new;
    p.shen_name = @"kongfanwu";
    p.shen_age = 50;
    p.shen_type = ShenPersonType2;
    
    p.name = @"name";
    p.age = 1;
    p.dog = d;
    p.array = [@[Dog.new] mutableCopy];
    p.type = PersonType1;
    
    
//    NSDictionary *jsonModel = [p yy_modelToJSONObject];
//    Person *p2 = [[p class] yy_modelWithJSON:jsonModel];
    Person *p2 = [p mutableCopy];
//    p2.name = @"kong";
//    p2.age = 2;
//    p2.dog.name = @"dob";
//    p2.dog.age = 2;
//    [p2 setBlockName:^(NSString * _Nonnull name) {
//        NSLog(@"Person2 %@", name);
//    }];
    
   
    
    NSLog(@"%@", p.description);
    NSLog(@"%@", p2.description);
 
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
