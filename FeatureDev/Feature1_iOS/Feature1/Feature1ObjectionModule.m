//
//  Feature1ObjectionModule.m
//  Feature1
//
//  Created by GK on 2018/5/30.
//  Copyright © 2018年 GK. All rights reserved.
//

#import "Feature1ObjectionModule.h"
#import "Feature1Interface.h"

@implementation Feature1ObjectionModule

+ (void)load {
    //获取默认的injector
    JSObjectionInjector *injector = [JSObjection defaultInjector];
    //默认的不存在，创建一个
    injector = injector ? : [JSObjection createInjector];

    //注册module
    injector = [injector withModule:[[Feature1ObjectionModule alloc] init]];

    //设置为默认的injector
    [JSObjection setDefaultInjector:injector];
}

- (void)configure {
   [self bindClass:[Feature1Interface class] toProtocol:@protocol(Feature1SDKProtocol)];
}
@end
