//
//  NSString+HYJEncryption.m
//  CangJieWriting
//
//  Created by 张文峰 on 15/9/7.
//  Copyright © 2015年 皓月君. All rights reserved.
//

#import "HYJEncryption.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (HYJEncryption)

/**
 *  SHA1 加密
 *
 *  @return 获取加密后的字符串
 */
- (NSString *)sha1 {
    char *cStr = (char *)[self UTF8String];
    NSData *data = [NSData dataWithBytes:cStr length:self.length];
    
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(data.bytes, (uint32_t)data.length, digest);

    NSMutableString *encryptionString = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for (int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [encryptionString appendFormat:@"%02x", digest[i]];
    }
    
    return [encryptionString copy];
}

/**
 *  MD5 加密
 *
 *  @return 获取加密后的字符串
 */
- (NSString *)md5 {
    char *cStr = (char *)[self UTF8String];

    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (uint32_t)strlen(cStr), digest);
    
    NSMutableString *encryptionString = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH *2];
    
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [encryptionString appendFormat:@"%02x", digest[i]];
    }
    
    return [encryptionString copy];
}

/**
 *  SHA1 + Base64 加密
 *
 *  @return 获取加密后的字符串
 */
- (NSString *)sha1_base64 {
    
    const char *cStr = [self UTF8String];
    NSData *data = [NSData dataWithBytes:cStr length:self.length];
    
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(data.bytes, (uint32_t)data.length, digest);
    
    NSData *base64 = [[NSData alloc] initWithBytes:digest length:CC_SHA1_DIGEST_LENGTH];
    base64 = [base64 base64EncodedDataWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    
    NSString *encryptionString = [[NSString alloc] initWithData:base64 encoding:NSUTF8StringEncoding];
    
    return encryptionString;
}

/**
 *  MD5 + Base64 加密
 *
 *  将
 *
 *  @return 获取加密后的字符串
 */
- (NSString *)md5_base64 {
    
    const char *cStr = [self UTF8String];
    
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (uint32_t)strlen(cStr), digest);
    
    NSData *base64 = [[NSData alloc] initWithBytes:digest length:CC_MD5_DIGEST_LENGTH];
    base64 = [base64 base64EncodedDataWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    
    NSString *encryptionString = [[NSString alloc] initWithData:base64 encoding:NSUTF8StringEncoding];
    
    return encryptionString;
}

/**
 *  Base64 编码
 *
 *  将
 *
 *  @return 获取编码后的字符串
 */
- (NSString *)base64EncodedString {
    NSData *originData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSString *encodedString = [originData base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    return encodedString;
}

/**
 *  Base64 解码
 *
 *  将
 *
 *  @return 获取解码后的字符串
 */
- (NSString *)base64DecodedString {
    NSData *decodedData = [[NSData alloc] initWithBase64EncodedString:self options:NSDataBase64DecodingIgnoreUnknownCharacters];
    NSString *decodedString = [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
    return decodedString;
}

/**
 *  Base64 编码
 *
 *  将
 *
 *  @return 获取编码后的二进制数据
 */
- (NSData *)base64EncodedData {
    NSData *originData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSData *encodedData = [originData base64EncodedDataWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    return encodedData;
}

/**
 *  Base64 解码
 *
 *  将
 *
 *  @return 获取解码后的二进制数据
 */
- (NSData *)base64DecodedData {
    NSData *decodedData = [[NSData alloc] initWithBase64EncodedString:self options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return decodedData;
}

@end
