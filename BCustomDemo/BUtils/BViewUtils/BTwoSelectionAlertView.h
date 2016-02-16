//
//  BTwoSelectionAlertView.h
//  BCustomDemo
//
//  Created by Ben on 11/12/2015.
//  Copyright © 2015 xpg. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BTwoSelectionAlertView;

@protocol BTwoSelectionAlertViewDelegate <NSObject>

- (void)bTwoSelectionAlertViewConfirm:(BTwoSelectionAlertView *)alertView;

@end

@interface BTwoSelectionAlertView : UIView

@property (weak, nonatomic) id<BTwoSelectionAlertViewDelegate>delegate;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *msgTextView;
@property (weak, nonatomic) IBOutlet UIView *alertView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *msgTextViewHeight;

@property (weak, nonatomic) IBOutlet UIImageView *topImageView;
@property (weak, nonatomic) IBOutlet UIImageView *middleImageView;
@property (weak, nonatomic) IBOutlet UIButton *confirmBtn;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;

/**
 * @brief show custom alertView
 * @parame target
 * @parameters window 添加到的window
 * @parameters title 标题
 **/
+ (instancetype)showAlertViewWithTarget:(id)target window:(UIWindow *)window title:(NSString *)title message:(NSString *)msg confirmText:(NSString *)confirmText cancelText:(NSString *)cancelText;
@end
