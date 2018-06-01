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

@implementation Feature1Interface
- (void)presentFeature1SDKWithSourceVC:(UIViewController *) sourceVC animationType:(ModuleAnimationType)animationType completionBlock: (void(^)(ModuleStatus status, NSString *errorCode, NSString *errorMsg)) completionBlock{
    // present view controller
    
    TestView *testView = [[TestView alloc] initWithFrame:CGRectMake(0, 0, 300, 200)];
    sourceVC.view.backgroundColor = [UIColor yellowColor];
    
    [sourceVC.view addSubview:testView];
    NSLog(@"你刚才调用了Feature1的组件");
}
@end
