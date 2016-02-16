//
//  NSDateFormatter+BNSDateFormatter.m
//  BCustomDemo
//
//  Created by Ben on 02/16/2016.
//  Copyright © 2016 com.ben. All rights reserved.
//

#import "NSDateFormatter+BNSDateFormatter.h"

@implementation NSDateFormatter (BNSDateFormatter)

/**
 * brief 日期格式：yyyy-MM-dd HH:mm:ss Formatter
 **/
+ (instancetype)authDateTimeFormatter {
    static NSDateFormatter *dateTimeFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dateTimeFormatter = [[NSDateFormatter alloc] init];
        NSLocale *usLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
        [dateTimeFormatter setLocale:usLocale];
        [dateTimeFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    });
    return dateTimeFormatter;
}

/**
 * brief 日期格式：yyyy-MM-dd HH:mm Formatter
 **/
+ (instancetype)reserveStartTimeFormatter {
    static NSDateFormatter *dateTimeFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dateTimeFormatter = [[NSDateFormatter alloc] init];
        NSLocale *usLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
        [dateTimeFormatter setLocale:usLocale];
        [dateTimeFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    });
    return dateTimeFormatter;
}


/**
 * brief 日期格式：yyyy-MM-dd Formatter
 **/
+ (instancetype)pileEvaluateDateFormatter {
    static NSDateFormatter *dateTimeFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dateTimeFormatter = [[NSDateFormatter alloc] init];
        NSLocale *usLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
        [dateTimeFormatter setLocale:usLocale];
        [dateTimeFormatter setDateFormat:@"yyyy-MM-dd"];
    });
    return dateTimeFormatter;
}

/**
 * brief 日期格式：yyyy/MM/dd Formatter
 **/
+ (instancetype)authDateFormatter {
    static NSDateFormatter *dateFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dateFormatter = [[NSDateFormatter alloc] init];
        NSLocale *usLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
        [dateFormatter setLocale:usLocale];
        [dateFormatter setDateFormat:@"yyyy/MM/dd"];
    });
    return dateFormatter;
}

/**
 * brief 日期格式：HH:mm Formatter
 **/
+ (instancetype)reserveEndTimeFormatter {
    static NSDateFormatter *dateTimeFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dateTimeFormatter = [[NSDateFormatter alloc] init];
        NSLocale *usLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
        [dateTimeFormatter setLocale:usLocale];
        [dateTimeFormatter setDateFormat:@"HH:mm"];
    });
    return dateTimeFormatter;
}

/**
 * brief 日期格式：M月d日 Formatter
 **/
+ (instancetype)mapFilterDateFormatter {
    static NSDateFormatter *formatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        formatter = [[NSDateFormatter alloc] init];
        NSLocale *usLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
        [formatter setLocale:usLocale];
        [formatter setDateFormat:@"M月d日"];
    });
    return formatter;
}
@end
