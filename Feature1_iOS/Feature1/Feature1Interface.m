//
//  Feature1Interface.m
//  Feature1
//
//  Created by GK on 2018/5/30.
//  Copyright © 2018年 GK. All rights reserved.
//

#import "Feature1Interface.h"
#import <UIKit/UIKit.h>
#import "TestView.h"
#import "NIBNViewController.h"
@implementation Feature1Interface
- (void)presentFeature1SDKWithSourceVC:(UIViewController *) sourceVC
                         animationType:(ModuleAnimationType)animationType
                           environment: (Environment)env
                       completionBlock: (void(^)(ModuleStatus status, NSString *errorCode, NSString *errorMsg)) completionBlock {
    
    Feature1GlobalData *data = [Feature1GlobalData shared];
    data.env = env;
    
    NSLog(@"current is %@",[Feature1GlobalData myFirstURL]);
    // present view controller
    
    TestView *testView = [[TestView alloc] initWithFrame:CGRectMake(0, 0, 300, 200)];
    sourceVC.view.backgroundColor = [UIColor yellowColor];
    
    [sourceVC.view addSubview:testView];
    
    NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:@"Feature1SDKBundle" withExtension:@"bundle"];
    NIBNViewController *nibVC = [[NIBNViewController alloc] initWithNibName:@"NIBNViewController" bundle:[NSBundle bundleWithURL:bundleURL]];
    nibVC.view.backgroundColor = [UIColor redColor];

    [sourceVC addChildViewController:nibVC];
    [sourceVC.view addSubview:nibVC.view];
    [nibVC didMoveToParentViewController:sourceVC];
   
    NSLog(@"你刚才调用了Feature1的组件");
}
@end
