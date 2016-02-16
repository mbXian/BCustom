//
//  NSDateFormatter+BNSDateFormatter.h
//  BCustomDemo
//
//  Created by Ben on 02/16/2016.
//  Copyright © 2016 com.ben. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDateFormatter (BNSDateFormatter)

/**
 * brief 日期格式：yyyy-MM-dd HH:mm:ss Formatter
 **/
+ (instancetype)authDateTimeFormatter;

/**
 * brief 日期格式：yyyy-MM-dd HH:mm Formatter
 **/
+ (instancetype)reserveStartTimeFormatter;

/**
 * brief 日期格式：yyyy-MM-dd Formatter
 **/
+ (instancetype)pileEvaluateDateFormatter;

/**
 * brief 日期格式：yyyy/MM/dd Formatter
 **/
+ (instancetype)authDateFormatter;

/**
 * brief 日期格式：HH:mm Formatter
 **/
+ (instancetype)reserveEndTimeFormatter;

/**
 * brief 日期格式：M月d日 Formatter
 **/
+ (instancetype)mapFilterDateFormatter;
@end
