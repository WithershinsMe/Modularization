//
//  ViewController.m
//  Modularization
//
//  Created by GK on 2018/5/30.
//  Copyright © 2018年 GK. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    NSLog(@"viewdidh");
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [Feature1_Obj presentFeature1SDKWithSourceVC:self animationType:Module_Push environment:Prd completionBlock:^(ModuleStatus status, NSString *errorCode, NSString *errorMsg) {
        
    }];
   
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
