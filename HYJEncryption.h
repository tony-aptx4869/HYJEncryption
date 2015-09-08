//
//  HYJEncryption.h
//  CangJieWriting
//
//  Created by 张文峰 on 15/9/8.
//  Copyright © 2015年 皓月君. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HYJEncryption : NSObject

@end

@interface HYJEncryption (SHA1_MD5_String)

///Encrypt the ~STRING~ using SHA1, and return the encrypted string. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSString *)sha1WithString:(NSString *)string;

///Encrypt the ~STRING~ using MD5, and return the encrypted string. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSString *)md5WithString:(NSString *)string;

///Encrypt the ~STRING~ using SHA1 + Base64, and return the encrypted string. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSString *)sha1_base64WithString:(NSString *)string;

///Encrypt the ~STRING~ using MD5 + Base64, and return the encrypted string. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSString *)md5_base64WithString:(NSString *)string;

@end

@interface HYJEncryption (SHA1_MD5_Data)

///Encrypt the ~DATA~ using SHA1, and return the encrypted string. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSString *)sha1WithData:(NSData *)data;

///Encrypt the ~DATA~ using MD5, and return the encrypted string. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSString *)md5WithData:(NSData *)data;

///Encrypt the ~DATA~ using SHA1 + Base64, and return the encrypted string. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSString *)sha1_base64WithData:(NSData *)data;

///Encrypt the ~DATA~ using MD5 + Base64, and return the encrypted string. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSString *)md5_base64WithData:(NSData *)data;

@end

@interface HYJEncryption (Base64_Encode_Decode)

///Encode the ~STRING~ using Base64, and return the encoded string. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSString *)base64EncodedStringWithString:(NSString *)string;

///Decode the ~STRING~ using Base64, and return the decoded string. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSString *)base64DecodedStringWithString:(NSString *)string;

///Encode the ~DATA~ using Base64, and return the encoded string. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSString *)base64EncodedStringWithData:(NSData *)data;

///Decode the ~DATA~ using Base64, and return the decoded string. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSString *)base64DecodedStringWithData:(NSData *)data;

///Encode the ~STRING~ using Base64, and return the encoded data. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSData *)base64EncodedDataWithString:(NSString *)string;

///Decode the ~STRING~ using Base64, and return the decoded data. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSData *)base64DecodedDataWithString:(NSString *)string;

///Encode the ~DATA~ using Base64, and return the encoded data. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSData *)base64EncodedDataWithData:(NSData *)data;

///Decode the ~DATA~ using Base64, and return the decoded data. Welcome to visit http://www.haoyuejun.com if you have any problems.
+ (NSData *)base64DecodedDataWithData:(NSData *)data;

@end

@interface NSString (HYJEncryption)

///Encrypt the ~STRING~ using SHA1, and return the encrypted string. Welcome to visit http://www.haoyuejun.com if you have any problems.
- (NSString *)sha1;

///Encrypt the ~STRING~ using MD5, and return the encrypted string. Welcome to visit http://www.haoyuejun.com if you have any problems.
- (NSString *)md5;

///Encrypt the ~STRING~ using SHA1 + Base64, and return the encrypted string. Welcome to visit http://www.haoyuejun.com if you have any problems.
- (NSString *)sha1_base64;

///Encrypt the ~STRING~ using MD5 + Base64, and return the encrypted string. Welcome to visit http://www.haoyuejun.com if you have any problems.
- (NSString *)md5_base64;

///Encode the ~STRING~ using Base64, and return the encoded string. Welcome to visit http://www.haoyuejun.com if you have any problems.
- (NSString *)base64EncodedString;

///Decode the ~STRING~ using Base64, and return the decoded string. Welcome to visit http://www.haoyuejun.com if you have any problems.
- (NSString *)base64DecodedString;

///Encode the ~STRING~ using Base64, and return the encoded data. Welcome to visit http://www.haoyuejun.com if you have any problems.
- (NSData *)base64EncodedData;

///Decode the ~STRING~ using Base64, and return the decoded data. Welcome to visit http://www.haoyuejun.com if you have any problems.
- (NSData *)base64DecodedData;

@end
