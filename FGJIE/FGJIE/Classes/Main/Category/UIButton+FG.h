//
//  UIButton+FG.h
//
//  Created by chfg on 16/4/2.
//  Copyright © 2016年 chfg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (FG)

/**
 * 设置普通状态与高亮状态的背景图片
 */
-(void)setN_BG:(NSString *)nbg H_BG:(NSString *)hbg;

/**
 * 设置普通状态与高亮状态的 '拉伸后' 背景图片
 */
-(void)setResizeN_BG:(NSString *)nbg H_BG:(NSString *)hbg;


@end
