//
//  CommonType.h
//  Common
//  Created by GK on 2018/5/30.
//  Copyright © 2018年 GK. All rights reserved.
//

#ifndef CommonType_h
#define CommonType_h

typedef NS_ENUM (NSInteger, ModuleAnimationType) {
    Module_Push,
    Module_Present
};
typedef NS_ENUM (NSInteger, ModuleStatus) {
    Success,
    Failure,
    Cancel
};
typedef NS_ENUM (NSInteger, Environment) {
    Prd,
    Pre,
    Sit
};
typedef void (^FFCallback)(ModuleStatus status,NSString *errorCode,NSString *errorMsg);

#endif /* CommonType_h */
