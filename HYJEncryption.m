//
//  HYJEncryption.m
//  CangJieWriting
//
//  Created by 张文峰 on 15/9/8.
//  Copyright © 2015年 皓月君. All rights reserved.
//

#import "HYJEncryption.h"
#import <CommonCrypto/CommonDigest.h>

@implementation HYJEncryption

@end

@implementation HYJEncryption (SHA1_MD5_String)

#pragma mark - HYJEncryption(SHA1_MD5_String)

+ (NSString *)sha1WithString:(NSString *)string {
    return [string sha1];
}

+ (NSString *)md5WithString:(NSString *)string {
    return [string md5];
}

+ (NSString *)sha1_base64WithString:(NSString *)string {
    return [string sha1_base64];
}

+ (NSString *)md5_base64WithString:(NSString *)string {
    return [string md5_base64];
}

@end

@implementation HYJEncryption (SHA1_MD5_Data)

#pragma mark - HYJEncryption(SHA1_MD5_Data)

+ (NSString *)sha1WithData:(NSData *)data {
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(data.bytes, (uint32_t)data.length, digest);
    
    NSMutableString *encryptionString = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for (int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [encryptionString appendFormat:@"%02x", digest[i]];
    }
    
    return [encryptionString copy];
}

+ (NSString *)md5WithData:(NSData *)data {
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(data.bytes, (uint32_t)data.length, digest);
    
    NSMutableString *encryptionString = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH *2];
    
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [encryptionString appendFormat:@"%02x", digest[i]];
    }
    
    return [encryptionString copy];
}

+ (NSString *)sha1_base64WithData:(NSData *)data {
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(data.bytes, (uint32_t)data.length, digest);
    
    NSData *base64 = [[NSData alloc] initWithBytes:digest length:CC_SHA1_DIGEST_LENGTH];
    base64 = [base64 base64EncodedDataWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    
    NSString *encryptionString = [[NSString alloc] initWithData:base64 encoding:NSUTF8StringEncoding];
    
    return encryptionString;
}

+ (NSString *)md5_base64WithData:(NSData *)data {
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(data.bytes, (uint32_t)data.length, digest);
    
    NSData *base64 = [[NSData alloc] initWithBytes:digest length:CC_MD5_DIGEST_LENGTH];
    base64 = [base64 base64EncodedDataWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    
    NSString *encryptionString = [[NSString alloc] initWithData:base64 encoding:NSUTF8StringEncoding];
    
    return encryptionString;
}

@end

@implementation HYJEncryption (Base64_Encode_Decode)

#pragma mark - HYJEncryption(Base64_Encode_Decode)

+ (NSString *)base64EncodedStringWithString:(NSString *)string {
    return [string base64EncodedString];
}

+ (NSString *)base64DecodedStringWithString:(NSString *)string {
    return [string base64DecodedString];
}

+ (NSString *)base64EncodedStringWithData:(NSData *)data {
    NSData *encodedData = [self base64EncodedDataWithData:data];
    NSString *encodedString = [[NSString alloc] initWithData:encodedData encoding:NSUTF8StringEncoding];
    return encodedString;
}

+ (NSString *)base64DecodedStringWithData:(NSData *)data {
    NSData *decodedData = [self base64DecodedDataWithData:data];
    NSString *decodedString = [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
    return decodedString;
}

+ (NSData *)base64EncodedDataWithString:(NSString *)string {
    return [string base64EncodedData];
}

+ (NSData *)base64DecodedDataWithString:(NSString *)string {
    return [string base64DecodedData];
}

+ (NSData *)base64EncodedDataWithData:(NSData *)data {
    NSData *encodedData = [data base64EncodedDataWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    return encodedData;
}

+ (NSData *)base64DecodedDataWithData:(NSData *)data {
    NSData *decodedData = [[NSData alloc] initWithBase64EncodedData:data options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return decodedData;
}

@end
