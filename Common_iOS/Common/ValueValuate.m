//
//  ValueValuate.m
//  Common
//
//  Created by GK on 2018/6/13.
//  Copyright © 2018年 GK. All rights reserved.
//

#import "ValueValuate.h"
#import "FFMethodDef.h"

@implementation ValueValuate
//验证邮箱是否合法
+(BOOL)validateEmail:(NSString *)email {
    if (IsNilOrNull(email)|| [self isEmptyOrWhitespaceWithStr:email]) {
        return NO;
    }
    
    NSRange range = [email rangeOfString:@".."];
    
    if (range.location != NSNotFound) {
        return NO;
    }
    
    //自定义版本
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z0-9.-]+";
    
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    if (![emailTest evaluateWithObject:email]) {
        return NO;
    }
    return YES;
}

//验证手机号码的合法性
+(BOOL)validatePhoneNum:(NSString *)phoneNum{
    if (IsNilOrNull(phoneNum)|| [self isEmptyOrWhitespaceWithStr:phoneNum]) {
        return NO;
    }
    NSString *regex =@"1[0-9]{10}";
    
    NSPredicate *mobileTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    if (![mobileTest evaluateWithObject:phoneNum]) {
        return NO;
    }
    return YES;
}

//验证姓名为2－10汉字
+(NSString *)validateChinese: (NSString *)userName{
    if (IsNilOrNull(userName)|| [self isEmptyOrWhitespaceWithStr:userName])
    {
        return @"请输入姓名！";
    }
    NSString *shouhuorenRegex = @"[\\u2E80-\\uFE4F\\•·]{2,21}";//@"[\\u4e00-\\u9fa5]{2,10}";
    NSPredicate *shouhuorenTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", shouhuorenRegex];
    if (![shouhuorenTest evaluateWithObject:userName])
    {
        return @"请输入正确的姓名！";
    }
    return @"";
}

+ (BOOL)isEmptyOrWhitespaceWithStr:(NSString *)str {
    return !str.length || ![str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length;
}

//邮箱号隐位处理
+(NSString *)email:(NSString *)email{
    
    NSRange range1 = [email rangeOfString:@"@"];
    NSString *subStr = [email substringWithRange:NSMakeRange(0, range1.location)];
    if (subStr.length==1)
    {
        NSString *aString = [NSString stringWithFormat:@"%@%@***%@",subStr,subStr,email];
        return aString;
    }
    else if (subStr.length == 2)
    {
        NSRange range = {0,subStr.length-1};
        NSString *string = [email stringByReplacingCharactersInRange:range withString:@"***"];
        NSString *aString = [NSString stringWithFormat:@"%@%@",subStr,string];
        return aString;
    }
    else
    {
        NSRange range = {2,subStr.length-3};
        NSString *aString = [email stringByReplacingCharactersInRange:range withString:@"***"];
        return  aString;
    }
}

//手机号隐位处理
+(NSString *)phonenum:(NSString *)phone{
    
    if (phone.length == 11)
    {
        NSRange range = {3,6};
        
        NSString * aString = [phone stringByReplacingCharactersInRange:range withString:@"******"];
        return  aString;
    }
    else
    {
        return phone;
    }
}

@end
