//
//  LogUtility.h
//
//  Created by Ben on 6/14/16.
//  Copyright © 2016 xpg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LogUtility : NSObject

/*
 * 写log到文件
 * @param logString log内容
 **/
+ (void)logToFileWithString:(NSString *)format, ...;

+ (NSString *)getLogFilePath;

+ (BOOL)clearLog;
@end
