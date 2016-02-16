//
//  UIView+BView.m
//  BCustomDemo
//
//  Created by Ben on 15/8/17.
//  Copyright (c) 2015年 com.xpg. All rights reserved.
//

#import "UIView+BView.h"

@implementation UIView (BView)

/**
 * @brief 圆角
 */
- (void)setCornerRadius{
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 3;
}

/**
 * @brief 圆形
 */
- (void)setRoundView{
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = self.frame.size.width / 2.0;
}

/**
 * @brief 设置边框
 */
- (void)setBorderColor:(UIColor *)color{
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = 0.5f;
}

/**
 * @brief 设置label宽度根据文字长度自动适配
 * @parame text UIlabel的文字
 * @return CGSize UIlabel自适应之后的大小
 */
- (CGSize)setAutoSizeWidthWithLabelText:(NSString *)text{
    UIFont * tfont = ((UILabel *)self).font;
    CGSize originSize = CGSizeMake(320.0, self.bounds.size.height);
    //    获取当前文本的属性
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:tfont,NSFontAttributeName,nil];
    CGSize  actualsize = [text boundingRectWithSize:originSize options:NSStringDrawingUsesLineFragmentOrigin  attributes:tdic context:nil].size;
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, actualsize.width, self.frame.size.height);
    ((UILabel *)self).text = text;
    return actualsize;
}

/**
 * @brief 设置TextView宽度根据文字长度自动适配
 * @parame text TextView的文字
 * @return CGSize TextView自适应之后的大小
 */
- (CGSize)setAutoSizeWidthWithTextViewText:(NSString *)text{
    UIFont * tfont = ((UILabel *)self).font;
    CGSize originSize = CGSizeMake(320.0, self.bounds.size.height);
    //    获取当前文本的属性
    CGSize  actualsize = [text sizeWithFont:tfont constrainedToSize:originSize lineBreakMode:UILineBreakModeWordWrap];
    return actualsize;
}

/**
 * @brief 返回xib关联的UIView
 * @parame ClassName 类名
 * @return UIView 返回xib关联的UIView
 */
+(UIView *)shareInstanceWithClassName:(NSString *)className
{
    NSArray * array=[[NSBundle mainBundle]loadNibNamed:className owner:nil options:nil];
    UIView * view=[array lastObject];
    return view;

}
- (void)traverseSubviewsWithBlock:(void(^)(UIView *view))block {
    for (UIView *view in self.subviews) {
        block(view);
    }
}
@end
