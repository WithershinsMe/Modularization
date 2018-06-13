//
//  Feature1GlobalData.m
//  Feature1
//
//  Created by GK on 2018/6/13.
//  Copyright © 2018年 GK. All rights reserved.
//

#import "Feature1GlobalData.h"

static NSString *firstURL = @"prd url";

@implementation Feature1GlobalData
+ (instancetype) shared {
    static dispatch_once_t onceToken;
    static Feature1GlobalData *sharedInstance = nil;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[Feature1GlobalData alloc] init];
    });
    return sharedInstance;
}

- (void)setEnv:(Environment)env {
    _env = env;
    
    switch (_env) {
        case Pre: {
            firstURL = @"pre url";
            break;
        }
        case Sit: {
            firstURL = @"sit url";
            break;
        }
        default:
            firstURL = @"prd url";
            break;
    }
}
+ (NSString *)myFirstURL {
    return firstURL;
}
@end
