//
//  FFMethodDef.h
//  Common
//
//  Created by GK on 2018/7/13.
//  Copyright © 2018年 GK. All rights reserved.
//

#ifndef FFMethodDef_h
#define FFMethodDef_h

//判断是否为nil,或为[NSNull null] 或为 "null" 或为"(null)"
#define IsNilOrNull(_ref)   (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) || ([(_ref) isEqual:@"null"]) || ([(_ref) isEqual:@"(null)"]))

#define IsStrEmpty(_ref)    (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) || ([@"" isEqualToString:(_ref)]))


#ifdef DEBUG
#   define NSLog(fmt,...) NSLog((@"%s\n %s (%d) => " fmt),__FILE__, __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#   define NSLog(...) (void)0
#endif
#endif /* FFMethodDef_h */
