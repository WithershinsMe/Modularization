//
//  ModuleObjectMethod.h
//  Common
//
//  Created by GK on 2018/5/30.
//  Copyright © 2018年 GK. All rights reserved.
//

#ifndef ModuleObjectMethod_h
#define ModuleObjectMethod_h
//Feature1 prortocol
#define Feature1_Obj \
({ \
JSObjectionInjector *injector = [JSObjection defaultInjector]; \
NSObject <Feature1SDKProtocol> *object = [injector getObject:@protocol(Feature1SDKProtocol)]; \
(object); \
})

#endif /* ModuleObjectMethod_h */
