# HYJEncryption

Author: WenFeng Zhang

E-mail: <wenfeng0218@icloud.com>

Blog: [http://www.haoyuejun.com](http://www.haoyuejun.com "Visit my Blog now!")

Copyright (c) 2015 HaoYueJun.com All Rights Reserved.

> Stay hungry. Stay foolish.   -- Steve Jobs

## Overview

**HYJEncryption** the great class makes using SHA1, MD5, Base64 encoding/decoding more and more easier.

The class provide you a lot of class methods to let you do those. In the same time, I also extend a category for our own NSString with some instance method to make using it more convenient for a string. 😄

## Methods

### 1. Class methods

#### >> HYJEncryption (SHA1_MD5_String)

+ \+ (NSString \*)sha1WithString:(NSString *)string;

+ \+ (NSString \*)md5WithString:(NSString *)string;

+ \+ (NSString \*)sha1_base64WithString:(NSString *)string;

+ \+ (NSString \*)md5_base64WithString:(NSString *)string;

#### >> HYJEncryption (SHA1_MD5_Data)

+ \+ (NSString \*)sha1WithData:(NSData *)data;

+ \+ (NSString \*)md5WithData:(NSData *)data;

+ \+ (NSString \*)sha1_base64WithData:(NSData *)data;

+ \+ (NSString \*)md5_base64WithData:(NSData *)data;

#### >> HYJEncryption (Base64_Encode_Decode)

+ \+ (NSString \*)base64EncodedStringWithString:(NSString *)string;

+ \+ (NSString \*)base64DecodedStringWithString:(NSString *)string;

+ \+ (NSString \*)base64EncodedStringWithData:(NSData *)data;

+ \+ (NSString \*)base64DecodedStringWithData:(NSData *)data;

+ \+ (NSData \*)base64EncodedDataWithString:(NSString *)string;

+ \+ (NSData \*)base64DecodedDataWithString:(NSString *)string;

+ \+ (NSData \*)base64EncodedDataWithData:(NSData *)data;

+ \+ (NSData \*)base64DecodedDataWithData:(NSData *)data;

### 2. Instance methods

#### >> NSString (HYJEncryption)

+ \- (NSString *)sha1;

+ \- (NSString *)md5;

+ \- (NSString *)sha1_base64;

+ \- (NSString *)md5_base64;

+ \- (NSString *)base64EncodedString;

+ \- (NSString *)base64DecodedString;

+ \- (NSData *)base64EncodedData;

+ \- (NSData *)base64DecodedData;

## Samples

	NSString *string = @"hello, world";
	NSString *sha1String = [HYJEncryption sha1WithString:string];
	NSString *md5String = [HYJEncryption md5WithString:string];
	NSString *sha1Base64String = [HYJEncryption sha1_base64WithString:string];
	NSString *md5Base64String = [HYJEncryption md5_base64WithString:string];
	
	NSData *data = [@"hello, world" dataUsingEncoding:NSUTF8StringEncoding];
	sha1String = [HYJEncryption sha1WithData:data];
	md5String = [HYJEncryption md5WithData:data];
	sha1Base64String = [HYJEncryption sha1_base64WithData:data];
	md5Base64String = [HYJEncryption md5_base64WithData:data];
	
	NSString *base64EncodedString = [HYJEncryption base64EncodedStringWithString:string];
	NSString *base64DecodedString = [HYJEncryption base64DecodedStringWithString:base64EncodedString];
	base64EncodedString = [HYJEncryption base64EncodedStringWithData:data];
	NSData *bese64EncodedData = [base64EncodedString dataUsingEncoding:NSUTF8StringEncoding];
	base64DecodedString = [HYJEncryption base64DecodedStringWithData:bese64EncodedData];
	bese64EncodedData = [HYJEncryption base64EncodedDataWithString:string];
	NSData *base64DecodedData = [HYJEncryption base64DecodedDataWithString:base64EncodedString];
	bese64EncodedData = [HYJEncryption base64EncodedDataWithData:data];
	base64DecodedData = [HYJEncryption base64DecodedDataWithData:bese64EncodedData];
	
	sha1String = [string sha1];
	md5String = [string md5];
	sha1Base64String = [string sha1_base64];
	md5Base64String = [string md5_base64];
	base64EncodedString = [string base64EncodedString];
	base64DecodedString = [base64EncodedString base64DecodedString];
	bese64EncodedData = [string base64EncodedData];
	base64EncodedString = [[NSString alloc] initWithData:bese64EncodedData encoding:NSUTF8StringEncoding];
	base64DecodedData = [base64EncodedString base64DecodedData];
	
### Welcome to visit my Blog: <http://www.haoyuejun.com>