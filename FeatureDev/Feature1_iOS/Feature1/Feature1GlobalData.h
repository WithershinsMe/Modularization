//
//  Feature1GlobalData.h
//  Feature1
//
//  Created by GK on 2018/6/13.
//  Copyright © 2018年 GK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Feature1GlobalData : NSObject

+ (instancetype) shared;

@property (nonatomic) Environment env;

+ (NSString *)myFirstURL;
@end
