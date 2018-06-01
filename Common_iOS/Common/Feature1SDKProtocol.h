//
//  Feature1SDKProtocol.h
//  Feature1
//
//  Created by GK on 2018/5/30.
//  Copyright © 2018年 GK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol Feature1SDKProtocol<NSObject>

- (void)presentFeature1SDKWithSourceVC:(UIViewController *) sourceVC animationType:(ModuleAnimationType)animationType completionBlock: (void(^)(ModuleStatus status, NSString *errorCode, NSString *errorMsg)) completionBlock;

@end
