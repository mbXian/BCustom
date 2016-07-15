//
//  LogUtility.m
//
//  Created by Ben on 6/14/16.
//  Copyright © 2016 xpg. All rights reserved.
//

#import "LogUtility.h"

static NSString *Log_String = @"Log";
static NSString *filePath;

@implementation LogUtility

/*
 * 写log到文件
 * @param logString log内容
 **/
+ (void)logToFileWithString:(NSString *)format, ...{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    //设置当前时间
    NSString *currentTimeStirng = [formatter stringFromDate:[NSDate date]];
    
    [LogUtility creatAndInitFile];
    //拼接可变参数
    va_list args;
    va_start(args, format);
    NSString *logString = [[NSString alloc] initWithFormat:format arguments:args];
    va_end(args);
    
    logString = [NSString stringWithFormat:@"%@:\n%@\n\n", currentTimeStirng, logString];
    
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForUpdatingAtPath:[LogUtility getLogFilePath]];
    //每天clear一次log
    NSData *logDateData = [fileHandle readDataOfLength:10];
    NSString *logDateString = [[NSString alloc]initWithData:logDateData encoding:NSUTF8StringEncoding];
    NSString *currentDateStirng = [currentTimeStirng substringToIndex:10];
    if (![currentDateStirng isEqualToString:logDateString]) {
        BOOL result = [LogUtility clearLog];
        if (result) {
            [LogUtility creatAndInitFile];
        }
    }
    
    [fileHandle seekToEndOfFile];  //将节点跳到文件的末尾
    NSData* stringData  = [logString dataUsingEncoding:NSUTF8StringEncoding];
    [fileHandle writeData:stringData]; //追加写入数据
    [fileHandle closeFile];
}

+ (void)creatAndInitFile{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if(![fileManager fileExistsAtPath:[LogUtility getLogFilePath]]) //如果不存在
    {
        NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
        [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        //设置当前时间
        NSString *currentTimeStirng = [formatter stringFromDate:[NSDate date]];
        NSString *str = [NSString stringWithFormat:@"%@ %@\nApp Version:%@\n", currentTimeStirng, Log_String, appVersion()];
        [str writeToFile:[LogUtility getLogFilePath] atomically:YES encoding:NSUTF8StringEncoding error:nil];
        
    }
}

+ (NSString *)getLogFilePath{
    if (!filePath) {
        // 获取Documents目录
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *docPath = [paths firstObject];
        filePath = [docPath stringByAppendingPathComponent:@"log.text"];
    }
    return filePath;
}

+ (BOOL)clearLog{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL result = [fileManager removeItemAtPath:[LogUtility getLogFilePath] error:nil];
    return result;
}

NSString *appVersion() {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}
@end
