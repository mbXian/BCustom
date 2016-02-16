//
//  NSString+BString.m
//  BCustomDemo
//
//  Created by Ben on 10/21/2015.
//  Copyright © 2015 com.xpg. All rights reserved.
//

#import "NSString+BString.h"

@implementation NSString (BString)

/**
 * @brief MD5 编码
 **/
+ (NSString *)md5Encode:(NSString *)str{
    const char *cStr = [str UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, strlen(cStr), result);
    return [NSString stringWithFormat:
            @"XXXXXXXXXXXXXXXX",
            result[0], result[1], result[2], result[3], result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11], result[12], result[13], result[14], result[15]
            ];
}

/**
 * @brief convert Dictionary string To Json format
 **/
+ (NSString *)convertToJsonWithDictionary:(NSMutableDictionary *)parame{
    NSDictionary *dict = parame;
    NSString *jsonString = nil;
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                       options:NSJSONWritingPrettyPrinted // Pass 0 if you don't care about the readability of the generated string
                                                         error:&error];
    if (! jsonData) {
        NSLog(@"Got an error: %@", error);
    } else {
        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    return jsonString;
}
@end
