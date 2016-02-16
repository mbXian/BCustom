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
 * brief 返回日期格式：yyyy/MM/dd
 **/
+ (instancetype)authDateFormatter;

/**
 * brief 返回日期格式：yyyy-MM-dd HH:mm:ss
 **/
+ (instancetype)authDateTimeFormatter;

/**
 * brief 返回日期格式：yyyy-MM-dd HH:mm
 **/
+ (instancetype)reserveStartTimeFormatter;

/**
 * brief 返回日期格式：yyyy-MM-dd HH:mm
 **/
+ (instancetype)reserveEndTimeFormatter;

/**
 * brief 返回日期格式：M月d日
 **/
+ (instancetype)mapFilterDateFormatter;

/**
 * brief 返回日期格式：yyyy-MM-dd
 **/
+ (instancetype)pileEvaluateDateFormatter;
@end
