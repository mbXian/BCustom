//
//  NSString+BString.h
//  BCustomDemo
//
//  Created by Ben on 10/21/2015.
//  Copyright © 2015 com.xpg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

@interface NSString (BString)

/**
 * @brief MD5 编码
 **/
+ (NSString *)md5Encode:(NSString *)str;

/**
 * @brief convert Dictionary string To Json format
 **/
+ (NSString *)convertToJsonWithDictionary:(NSMutableDictionary *)parame;
@end
