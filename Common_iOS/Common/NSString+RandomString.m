//
//  NSString+RandomString.m
//  Common
//
//  Created by GK on 2018/6/15.
//  Copyright © 2018年 GK. All rights reserved.
//

#import "NSString+RandomString.h"

@implementation NSString (RandomString)

- (NSString *)generateRandomString
{

    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:62];
    
    int x = 0;
    
    while (x < 26)
    {
        if (x < 10)
        {
            NSString *number = [NSString stringWithFormat:@"%c", '0' + x];
            
            [array addObject:number];
        }
        
        NSString *uppercase = [NSString stringWithFormat:@"%c", 'A' + x];
        NSString *lowercase = [NSString stringWithFormat:@"%c", 'a' + x];
        
        [array addObject:uppercase];
        [array addObject:lowercase];
        
        x++;
    }
    
    NSMutableSet *randomSet = [[NSMutableSet alloc] init];
    
    while ([randomSet count] < 16)
    {
        int r = arc4random() % [array count];
        [randomSet addObject:array[r]];
    }
    
    NSArray *randomArray = [randomSet allObjects];
    NSString *randomKey = [randomArray componentsJoinedByString:@""];
    
    return randomKey;
}
@end
